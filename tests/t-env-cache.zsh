#!/usr/bin/env zunit
#{{{                    MARK:Header
#**************************************************************
##### Author: MenkeTechnologies
##### GitHub: https://github.com/MenkeTechnologies
##### Purpose: zsh tests for the fzf env cache regen + preview.
##### Notes:  pins byte-offset / length semantics introduced in
#####         the regen/preview rewrite.  Sandbox the regen
#####         output into a temp dir so the real cache is not
#####         clobbered.
#}}}***********************************************************

@setup {
    load "test_lib.zsh"

    ZPWR_TEST_ENV_DIR="${ZPWR_LOCAL_TEMP:-/tmp}/zpwrEnvCacheTest"
    command mkdir -p "$ZPWR_TEST_ENV_DIR"

    ZPWR_ENV_KEY_FILE="$ZPWR_TEST_ENV_DIR/Key.txt"
    ZPWR_ENV_VALUE_FILE="$ZPWR_TEST_ENV_DIR/Value.txt"
    ZPWR_ENV_IDX_FILE="$ZPWR_TEST_ENV_DIR/Idx.txt"
    ZPWR_TEMPFILE2="$ZPWR_TEST_ENV_DIR/tempfile2"

    # Deterministic seed entries so we can pin expectations
    # without depending on whatever the running shell already loaded.
    alias zpwrTestCacheAlias='echo hello-cache'
    function zpwrTestCacheFunc() { print -r -- "body-marker-XYZZY"; }
    function zpwrTestCacheClash() { print -r -- "func-wins"; }
    alias zpwrTestCacheClash='echo alias-loses'
    export ZPWR_TEST_CACHE_PARAM='param-marker-PLUGH'

    source "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
}

@teardown {
    unalias zpwrTestCacheAlias 2>/dev/null
    unalias zpwrTestCacheClash 2>/dev/null
    unfunction zpwrTestCacheFunc 2>/dev/null
    unfunction zpwrTestCacheClash 2>/dev/null
    unset ZPWR_TEST_CACHE_PARAM
}

@test 'regen produces non-empty Key.txt' {
    run test -s "$ZPWR_ENV_KEY_FILE"
    assert $state equals 0
}

@test 'regen produces non-empty Value.txt' {
    run test -s "$ZPWR_ENV_VALUE_FILE"
    assert $state equals 0
}

@test 'regen produces non-empty Idx.txt' {
    run test -s "$ZPWR_ENV_IDX_FILE"
    assert $state equals 0
}

@test 'every Key.txt line is "<type> <name>"' {
    local bad
    bad=$(command awk '
        $1 !~ /^(param|alias|builtin|resword|command|func)$/ || NF < 2 { c++ }
        END { print c+0 }
    ' "$ZPWR_ENV_KEY_FILE")
    assert "$bad" equals 0
}

@test 'Key.txt names are unique (last-write-wins collapses dups)' {
    local total unique
    total=$(command awk '{print $2}' "$ZPWR_ENV_KEY_FILE" | command wc -l)
    unique=$(command awk '{print $2}' "$ZPWR_ENV_KEY_FILE" | LC_ALL=C command sort -u | command wc -l)
    total=${total// /}
    unique=${unique// /}
    assert "$total" equals "$unique"
}

@test 'Idx.txt is sourceable and populates ZPWR_ENV_IDX' {
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    run test "${#ZPWR_ENV_IDX}" -gt 0
    assert $state equals 0
}

@test 'each Idx value has exactly 3 whitespace-separated fields' {
    local name v
    local -a parts
    local -i bad=0
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    for name v in "${(@kv)ZPWR_ENV_IDX}"; do
        parts=( ${=v} )
        if (( ${#parts} != 3 )); then
            bad=$((bad + 1))
        fi
    done
    assert $bad equals 0
}

@test 'seeded param: idx slice extracts export NAME=value block' {
    local entry type offset length chunk
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    entry="${ZPWR_ENV_IDX[ZPWR_TEST_CACHE_PARAM]:-}"
    assert "$entry" is_not_empty
    read -r type offset length <<< "$entry"
    assert "$type" same_as param
    chunk=$(command tail -c +$((offset+1)) "$ZPWR_ENV_VALUE_FILE" | command head -c $length)
    assert "$chunk" contains "export ZPWR_TEST_CACHE_PARAM=param-marker-PLUGH"
}

@test 'seeded alias: idx slice extracts alias NAME=... block' {
    local entry type offset length chunk
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    entry="${ZPWR_ENV_IDX[zpwrTestCacheAlias]:-}"
    assert "$entry" is_not_empty
    read -r type offset length <<< "$entry"
    assert "$type" same_as alias
    chunk=$(command tail -c +$((offset+1)) "$ZPWR_ENV_VALUE_FILE" | command head -c $length)
    assert "$chunk" contains "alias zpwrTestCacheAlias="
    assert "$chunk" contains "hello-cache"
}

@test 'seeded function: idx slice contains header + body marker' {
    local entry type offset length chunk
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    entry="${ZPWR_ENV_IDX[zpwrTestCacheFunc]:-}"
    assert "$entry" is_not_empty
    read -r type offset length <<< "$entry"
    assert "$type" same_as func
    chunk=$(command tail -c +$((offset+1)) "$ZPWR_ENV_VALUE_FILE" | command head -c $length)
    assert "$chunk" contains "zpwrTestCacheFunc is a shell function"
    assert "$chunk" contains "body-marker-XYZZY"
}

@test 'collision: func beats alias for same name in Key.txt' {
    local line
    line=$(command grep -E ' zpwrTestCacheClash$' "$ZPWR_ENV_KEY_FILE")
    assert "$line" same_as "func zpwrTestCacheClash"
}

@test 'command idx entry is sentinel (-1 0) with no Value.txt bytes' {
    local entry zsh_path
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    zsh_path=$(command -v zsh)
    entry="${ZPWR_ENV_IDX[$zsh_path]:-}"
    assert "$entry" is_not_empty
    assert "$entry" same_as "command -1 0"
}

@test 'every idx slice falls inside Value.txt and sum is positive' {
    local name v fsize
    local -a parts
    local -i sum=0 bad=0
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    fsize=$(command wc -c < "$ZPWR_ENV_VALUE_FILE")
    fsize=${fsize// /}
    for name v in "${(@kv)ZPWR_ENV_IDX}"; do
        parts=( ${=v} )
        [[ ${parts[1]} == command ]] && continue
        if (( parts[2] < 0 || parts[3] <= 0 || parts[2] + parts[3] > fsize )); then
            bad=$((bad + 1))
        fi
        sum=$((sum + parts[3]))
    done
    assert $bad equals 0
    run test $sum -gt 0
    assert $state equals 0
    run test $sum -le $fsize
    assert $state equals 0
}

@test 'preview script extracts seeded param block in plain mode' {
    local out
    out=$(ZPWR_ENV_IDX_FILE="$ZPWR_ENV_IDX_FILE" \
          ZPWR_ENV_VALUE_FILE="$ZPWR_ENV_VALUE_FILE" \
          command zsh "$ZPWR_SCRIPTS/fzfEnvPreview.zsh" ZPWR_TEST_CACHE_PARAM plain env)
    assert "$out" contains "export ZPWR_TEST_CACHE_PARAM=param-marker-PLUGH"
}

@test 'preview script extracts seeded function body' {
    local out
    out=$(ZPWR_ENV_IDX_FILE="$ZPWR_ENV_IDX_FILE" \
          ZPWR_ENV_VALUE_FILE="$ZPWR_ENV_VALUE_FILE" \
          command zsh "$ZPWR_SCRIPTS/fzfEnvPreview.zsh" zpwrTestCacheFunc plain env)
    assert "$out" contains "zpwrTestCacheFunc is a shell function"
    assert "$out" contains "body-marker-XYZZY"
}

@test 'preview script verbs mode parses padded line to target name' {
    local line out
    line='someVerb    ZPWR_TEST_CACHE_PARAM=desc'
    out=$(ZPWR_ENV_IDX_FILE="$ZPWR_ENV_IDX_FILE" \
          ZPWR_ENV_VALUE_FILE="$ZPWR_ENV_VALUE_FILE" \
          command zsh "$ZPWR_SCRIPTS/fzfEnvPreview.zsh" "$line" plain verbs)
    assert "$out" contains "export ZPWR_TEST_CACHE_PARAM=param-marker-PLUGH"
}

@test 'preview script prints not-found marker for unknown name' {
    local out
    out=$(ZPWR_ENV_IDX_FILE="$ZPWR_ENV_IDX_FILE" \
          ZPWR_ENV_VALUE_FILE="$ZPWR_ENV_VALUE_FILE" \
          command zsh "$ZPWR_SCRIPTS/fzfEnvPreview.zsh" zpwr_doesnotexist_xyzzy plain env)
    assert "$out" contains "No input found for _zpwr_doesnotexist_xyzzy_"
}

@test 'preview sysseek output matches tail head extraction' {
    local name entry type offset length via_preview via_tail
    local -i mismatches=0
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    for name in ZPWR_TEST_CACHE_PARAM zpwrTestCacheAlias zpwrTestCacheFunc; do
        entry="${ZPWR_ENV_IDX[$name]}"
        read -r type offset length <<< "$entry"
        via_preview=$(ZPWR_ENV_IDX_FILE="$ZPWR_ENV_IDX_FILE" ZPWR_ENV_VALUE_FILE="$ZPWR_ENV_VALUE_FILE" command zsh "$ZPWR_SCRIPTS/fzfEnvPreview.zsh" "$name" plain env)
        via_tail=$(command tail -c +$((offset+1)) "$ZPWR_ENV_VALUE_FILE" | command head -c $length)
        [[ $via_preview != $via_tail ]] && mismatches=$((mismatches + 1))
    done
    assert $mismatches equals 0
}

@test 'idx is idempotent under double source' {
    local -i count1 count2
    typeset -A ZPWR_ENV_IDX=()
    builtin source "$ZPWR_ENV_IDX_FILE"
    count1=${#ZPWR_ENV_IDX}
    builtin source "$ZPWR_ENV_IDX_FILE"
    count2=${#ZPWR_ENV_IDX}
    assert $count1 equals $count2
}

@test 'fzfEnvPreview.zsh has valid zsh syntax' {
    run command zsh -n "$ZPWR_SCRIPTS/fzfEnvPreview.zsh"
    assert $state equals 0
}

@test 'zshRegenSearchableEnv.zsh has valid zsh syntax' {
    run command zsh -n "$ZPWR_SCRIPTS/zshRegenSearchableEnv.zsh"
    assert $state equals 0
}

@test 'zpwrRegenSearchEnv autoload function exists' {
    run zpwrExists zpwrRegenSearchEnv
    assert $state equals 0
}
