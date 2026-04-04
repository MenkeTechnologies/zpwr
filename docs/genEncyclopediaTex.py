#!/usr/bin/env python3
"""Generate zpwr-encyclopedia.tex from wizard page files."""
import os, re, glob, sys

pagedir = sys.argv[1] if len(sys.argv) > 1 else os.path.expanduser("~/.zpwr/docs/wizard_pages")
outfile = sys.argv[2] if len(sys.argv) > 2 else os.path.expanduser("~/.zpwr/docs/zpwr-encyclopedia.tex")
pages = sorted(glob.glob(os.path.join(pagedir, "page_*.zsh")))

# Count unique chapters
_chapters = set()
for _p in pages:
    with open(_p) as _f:
        _m = re.search(r'PAGE_CHAPTER="(.*?)"', _f.read())
        if _m: _chapters.add(_m.group(1))
num_chapters = len(_chapters)

# Count verbs dynamically from zpwr.zsh + plugin estimate
_zpwr_zsh = os.path.expanduser("~/.zpwr/env/zpwr.zsh")
_verb_count = 0
if os.path.exists(_zpwr_zsh):
    with open(_zpwr_zsh) as _f:
        _verb_count = _f.read().count("ZPWR_VERBS[")
# add plugin verbs (zinit plugins that register ZPWR_VERBS)
_zinit_plugins = os.path.expanduser("~/.zinit/plugins")
if os.path.isdir(_zinit_plugins):
    import subprocess
    _r = subprocess.run(["grep", "-rch", "ZPWR_VERBS\\[", _zinit_plugins], capture_output=True, text=True)
    for _line in _r.stdout.strip().split("\n"):
        if _line.strip().isdigit():
            _verb_count += int(_line.strip())
num_verbs = _verb_count

def extract_page(filepath):
    with open(filepath) as f:
        content = f.read()
    title = chapter = ""
    prints = []
    m = re.search(r'PAGE_TITLE="(.*?)"', content)
    if m: title = m.group(1)
    m = re.search(r'PAGE_CHAPTER="(.*?)"', content)
    if m: chapter = m.group(1)
    for line in content.split('\n'):
        line = line.strip()
        if line.startswith('print '):
            m = re.match(r'print\s+"(.*)"$', line) or re.match(r"print\s+'(.*)'$", line)
            if m: prints.append(m.group(1))
    return title, chapter, prints

def escape_latex(text):
    for old, new in [('\\','\\textbackslash{}'), ('&','\\&'), ('%','\\%'), ('#','\\#'),
                      ('_','\\_'), ('{','\\{'), ('}','\\}'), ('~','\\textasciitilde{}'),
                      ('^','\\textasciicircum{}'), ('$','\\$')]:
        text = text.replace(old, new)
    text = text.replace('\\textbackslash\\{\\}', '\\textbackslash{}')
    return text

def strip_colors(text):
    # Remove ${X} color vars like ${C}, ${N}, ${M}, ${B}, ${D}, ${UL}
    text = re.sub(r'\$\{[A-Z]{1,2}\}', '', text)
    # Remove $X single-letter color vars but NOT $ZPWR or $HOME etc
    text = re.sub(r'\$[A-Z](?![A-Za-z_])', '', text)
    text = re.sub(r'\\033\[[0-9;]*m', '', text)
    # unescape zsh escapes inside double-quoted print strings
    text = text.replace('\\"', '"')
    text = text.replace('\\$', '$')
    text = text.replace('\\\\', '\\')
    # replace block drawing chars that don't render in Helvetica Neue
    text = text.replace('░', '-').replace('▒', '=').replace('▓', '#').replace('█', '#')
    return text.strip()

def markup_inline(text):
    """Bold environment variables and file paths in LaTeX text."""
    # Bold ALLCAPS env vars (PATH, FPATH, HISTFILE, MANPATH, EDITOR, SHELL, HOME, etc.)
    # Must be already LaTeX-escaped (underscores are \_)
    # Bold file paths first (longer matches before variable-only matches)
    # Match ~/ paths (~ is escaped to \textasciitilde{} by escape_latex)
    text = re.sub(r'(\\textasciitilde\{\}/[A-Za-z0-9\\_./\-]+)', r'\\textbf{\1}', text)
    # Match \$ZPWR_XXX/path and \$HOME/path (full path with variable prefix)
    # Only allow word chars, escaped underscores, dots, slashes, hyphens — not \{ \}
    text = re.sub(r'(\\\$(?:ZPWR(?:\\_[A-Z\_]+)?|HOME)/(?:[A-Za-z0-9./\-]|\\_)+)', r'\\textbf{\1}', text)
    # Match absolute paths like /etc/..., /usr/..., /var/...
    text = re.sub(r'(?<![a-zA-Z])(/(?:etc|usr|var|tmp|opt|bin|sbin|lib|dev|proc|sys)/[A-Za-z0-9\\_./\-]+)', r'\\textbf{\1}', text)
    # Bold ZPWR\_SOMETHING env vars (standalone, not already inside path \textbf)
    def _bold_zpwr(m):
        start = m.start()
        # check if already inside \textbf{...}
        before = text[:start]
        open_bf = before.rfind('\\textbf{')
        if open_bf >= 0:
            # check if there's an unmatched \textbf{ before us
            between = before[open_bf:]
            if between.count('{') > between.count('}'):
                return m.group(0)  # already bolded
        return '\\textbf{' + m.group(1) + '}'
    text = re.sub(r'(?<![\\a-zA-Z])(ZPWR(?:\\_[A-Z][A-Z0-9\_]*)?)', _bold_zpwr, text)
    # Bold well-known env vars
    text = re.sub(r'(?<![\\a-zA-Z{])\b((?:PATH|FPATH|MANPATH|HISTFILE|EDITOR|VISUAL|SHELL|HOME|TERM|DISPLAY|COLUMNS|LINES|ZSH\\_VERSION|ZSH\\_COMPDUMP|ZDOTDIR|PAGER|LANG|LC\\_ALL|TMPDIR|USER|LOGNAME|PWD|OLDPWD|SECONDS|RANDOM|IFS|PS1|PS2|PS3|PS4|PROMPT|RPROMPT))\b', r'\\textbf{\1}', text)
    # Match absolute paths like /etc/..., /usr/..., /var/...
    text = re.sub(r'(?<![a-zA-Z])(/(?:etc|usr|var|tmp|opt|bin|sbin|lib|dev|proc|sys)/[A-Za-z0-9\\_./\-]+)', r'\\textbf{\1}', text)
    return text

def convert_line(text):
    original = text
    clean = escape_latex(strip_colors(text))
    if not clean: return None
    if any(c in text for c in '\u250c\u2514\u2510\u2518\u2502\u2500\u2550'): return None
    if '===' in clean or '<<<' in clean or '>>>' in clean:
        return ('heading', clean.replace('===','').replace('<<<','').replace('>>>','').strip())
    if '${B}${Y}' in original or '${B}${M}' in original:
        return ('section_title', markup_inline(clean))
    # Classify as command if ${M} is the PRIMARY color (starts the content),
    # not just embedded inline in a ${C} prose sentence.
    # Command pattern: line content starts with optional spaces then ${M}
    # Prose pattern: line content starts with ${C} or ${D} with ${M} inline later
    is_header = '${B}${Y}' in original or '${B}${M}' in original
    # extract the raw content after "print" indentation
    content_after_indent = re.sub(r'^[\s]*', '', original)
    # check if ${M} is the first color code (command) vs ${C}/${D} first (prose)
    first_color = re.search(r'\$\{([A-Z]{1,2})\}', content_after_indent)
    is_cmd_color_first = first_color and first_color.group(1) == 'M' if first_color else False
    is_cmd = is_cmd_color_first and not is_header and '${M}' in original
    # Also detect lines with \$ prompt (e.g. "\$ zpwr bench") as commands
    stripped_raw = strip_colors(text).strip()
    has_prompt = bool(re.match(r'^\\?\$\s+\S', stripped_raw))
    if is_cmd or has_prompt:
        cmd_text = stripped_raw
        # Strip leading $ prompt and \$ prompt
        cmd_text = re.sub(r'^\\?\$\s+', '', cmd_text)
        cmd_text = escape_latex(cmd_text)
        cmd_text = cmd_text.replace('\\$', '')
        # Keep # comments green inside codebox — \# resets color
        cmd_text = cmd_text.replace('\\#', '\\textcolor{neongreen}{\\#}')
        return ('command', cmd_text)
    if '${D}' in original and '//' in text:
        return ('comment', markup_inline(clean))
    # Strip "$ " prompt before commands in prose text (e.g. "1. $ zpwr start")
    clean = re.sub(r'\\\$\s+(zpwr\b)', r'\1', clean)
    return ('text', markup_inline(clean))

def fix_prose(text):
    """Fix grammar for prose text: capitalize sentences, ensure trailing period."""
    if not text or len(text) < 3:
        return text
    # skip if it looks like a list/table/key=value/dotted line
    if re.match(r'^[\-\*\d]', text) or '...' in text or '===' in text:
        return text
    # known command names that must stay lowercase
    _cmds = {'zpwr', 'zsh', 'bash', 'tmux', 'vim', 'nvim', 'emacs', 'git',
             'fzf', 'eza', 'bat', 'fd', 'rg', 'grep', 'sed', 'awk', 'curl',
             'ssh', 'sudo', 'brew', 'pip', 'npm', 'cargo', 'perl', 'python3',
             'lsof', 'lsofrs', 'temprs', 'ccze', 'grc', 'figlet', 'zinit',
             'compinit', 'autoload', 'bindkey', 'zstyle', 'zmodload',
             'shellcheck', 'shfmt', 'xelatex', 'delta', 'netstat', 'ss',
             'strace', 'ltrace', 'dtrace', 'dtruss', 'fswatch', 'inotifywait',
             'ponysay', 'lolcat', 'cmatrix', 'zprof', 'zcompile'}

    def _cap_if_not_cmd(m):
        word = m.group(2)
        if word in _cmds:
            return m.group(1) + ' ' + word
        return m.group(1) + ' ' + word[0].upper() + word[1:]

    # capitalize first word if not a command name or LaTeX macro
    # skip over LaTeX commands like \textbf{...}, \$, \textasciitilde{} at start
    i = 0
    while i < len(text) and not text[i].isalpha():
        i += 1
    if i < len(text):
        # don't capitalize if inside a LaTeX command (preceded by \)
        if i > 0 and text[i-1] == '\\':
            pass  # skip — this is part of \textbf, \textasciitilde, etc.
        else:
            first_word = re.match(r'[a-zA-Z_\-]+', text[i:])
            if first_word and first_word.group().lower() not in _cmds:
                text = text[:i] + text[i].upper() + text[i+1:]

    # capitalize after sentence-ending punctuation, unless next word is a command
    # skip if next char after space is \ (LaTeX command like \textbf)
    text = re.sub(r'([.!?])\s+([a-z][a-z_\-]*)', _cap_if_not_cmd, text)
    # fix any \Textbf that snuck through
    text = text.replace('\\Textbf', '\\textbf')
    text = text.replace('\\Textasciitilde', '\\textasciitilde')

    # add trailing period if ends with alphanumeric
    stripped = text.rstrip()
    if stripped and stripped[-1] not in '.!?:;,)]\'"' and stripped[-1].isalnum():
        text = stripped + '.'
    return text

# Screenshot directory (computed early for title page)
screenshotdir = os.path.join(os.path.dirname(outfile), "screenshots")
figlet_path = os.path.join(screenshotdir, 'figlet_zpwr.png')
figlet_include = r'\includegraphics[width=0.5\textwidth]{' + figlet_path + '}' if os.path.exists(figlet_path) else ''

PREAMBLE = r'''\documentclass[11pt,a4paper,twoside]{book}
\usepackage[margin=2.5cm,top=3cm,bottom=3cm,headheight=22pt]{geometry}
\usepackage{xcolor}
\usepackage{fontspec}
\usepackage{titlesec}
\usepackage{fancyhdr}
\usepackage{hyperref}
\usepackage{parskip}
\usepackage{microtype}
\usepackage{tikz}
\usepackage{bookmark}
\usepackage{tcolorbox}
\usepackage{graphicx}
\tcbuselibrary{skins,breakable}

\definecolor{bg}{HTML}{06060C}
\definecolor{neoncyan}{HTML}{00F0FF}
\definecolor{neonpink}{HTML}{FF2CF0}
\definecolor{neongreen}{HTML}{39FF14}
\definecolor{neonyellow}{HTML}{FFE500}
\definecolor{neonred}{HTML}{FF003C}
\definecolor{neonorange}{HTML}{FF6B00}
\definecolor{dimtext}{HTML}{8888AA}
\definecolor{bodytext}{HTML}{C8C8E0}
\definecolor{codebg}{HTML}{0C0C18}
\definecolor{ruleglow}{HTML}{00AACC}
\definecolor{chapterbg}{HTML}{0A0A16}

\pagecolor{bg}
\color{bodytext}

\setmonofont{Menlo}[Scale=0.82]
\setmainfont{Helvetica Neue}[UprightFont=*,BoldFont=* Bold,ItalicFont=* Italic]

\linespread{1.3}
\setlength{\parskip}{8pt}
\setlength{\parindent}{0pt}
\sloppy

\titleformat{\chapter}[display]
    {\normalfont\Huge\bfseries\color{neoncyan}}
    {}
    {0pt}
    {\begin{tikzpicture}[remember picture, overlay]
        \fill[chapterbg] (current page.north west) rectangle ([yshift=-6cm]current page.north east);
        \draw[neoncyan, line width=1.5pt] ([yshift=-6cm]current page.north west) -- ([yshift=-6cm]current page.north east);
        \draw[neonpink, line width=0.5pt, opacity=0.4] ([yshift=-5.9cm]current page.north west) -- ([yshift=-5.9cm]current page.north east);
    \end{tikzpicture}\vspace{-20pt}}
    [\vspace{8pt}{\color{dimtext}\small\itshape // ZPWR ENCYCLOPEDIA //}]
\titlespacing*{\chapter}{0pt}{50pt}{40pt}

\titleformat{\section}
    {\normalfont\Large\bfseries\color{neonpink}}
    {}
    {0pt}
    {}
    [\vspace{2pt}{\color{ruleglow}\rule{\textwidth}{0.5pt}}\vspace{1pt}{\color{neonpink!40}\rule{\textwidth}{0.2pt}}]
\titlespacing*{\section}{0pt}{24pt}{12pt}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE]{\color{dimtext}\small\textsc{\leftmark}}
\fancyhead[RO]{\color{dimtext}\small\textit{\rightmark}}
\fancyfoot[C]{{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}\quad{\color{dimtext}\small\thepage}\quad{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}}
\renewcommand{\headrule}{{\color{ruleglow}\hrule height 0.3pt}}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{\markright{#1}}
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[C]{{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}\quad{\color{dimtext}\small\thepage}\quad{\color{neoncyan}\rule[4pt]{2cm}{0.3pt}}}
    \renewcommand{\headrule}{}
}

\newtcolorbox{codebox}{
    enhanced,colback=codebg,colframe=ruleglow,boxrule=0.5pt,arc=3pt,
    left=10pt,right=10pt,top=6pt,bottom=6pt,
    fontupper=\small\ttfamily\color{neongreen},breakable,
    shadow={1mm}{-1mm}{0mm}{neoncyan!15!bg},
    borderline west={2pt}{0pt}{neonpink!60}
}

% Glowing info box for tips and notes
\newtcolorbox{glowbox}{
    enhanced,colback=bg,colframe=neonpink,boxrule=0.4pt,arc=4pt,
    left=10pt,right=10pt,top=6pt,bottom=6pt,
    fontupper=\color{bodytext},breakable,
    shadow={2mm}{-2mm}{0mm}{neonpink!10!bg},
    borderline north={2pt}{0pt}{neoncyan!40},
    borderline south={2pt}{0pt}{neoncyan!40}
}

% Page border on every page
\usepackage{background}
\backgroundsetup{
    scale=1,angle=0,opacity=1,
    contents={\begin{tikzpicture}[remember picture, overlay]
        % Corner decorations
        \draw[neoncyan, line width=0.3pt, opacity=0.15]
            ([xshift=8mm,yshift=-8mm]current page.north west) --
            ([xshift=8mm,yshift=-25mm]current page.north west);
        \draw[neoncyan, line width=0.3pt, opacity=0.15]
            ([xshift=8mm,yshift=-8mm]current page.north west) --
            ([xshift=25mm,yshift=-8mm]current page.north west);
        \draw[neonpink, line width=0.3pt, opacity=0.15]
            ([xshift=-8mm,yshift=-8mm]current page.north east) --
            ([xshift=-8mm,yshift=-25mm]current page.north east);
        \draw[neonpink, line width=0.3pt, opacity=0.15]
            ([xshift=-8mm,yshift=-8mm]current page.north east) --
            ([xshift=-25mm,yshift=-8mm]current page.north east);
        \draw[neoncyan, line width=0.3pt, opacity=0.15]
            ([xshift=8mm,yshift=8mm]current page.south west) --
            ([xshift=8mm,yshift=25mm]current page.south west);
        \draw[neoncyan, line width=0.3pt, opacity=0.15]
            ([xshift=8mm,yshift=8mm]current page.south west) --
            ([xshift=25mm,yshift=8mm]current page.south west);
        \draw[neonpink, line width=0.3pt, opacity=0.15]
            ([xshift=-8mm,yshift=8mm]current page.south east) --
            ([xshift=-8mm,yshift=25mm]current page.south east);
        \draw[neonpink, line width=0.3pt, opacity=0.15]
            ([xshift=-8mm,yshift=8mm]current page.south east) --
            ([xshift=-25mm,yshift=8mm]current page.south east);
        % Subtle scanlines across entire page
        \foreach \y in {0,0.4,...,29.7} {
            \draw[white, line width=0.08pt, opacity=0.012]
                ([yshift=-\y cm]current page.north west) -- ([yshift=-\y cm]current page.north east);
        }
    \end{tikzpicture}}
}

% Enhanced chapter page with circuit board pattern
\titleformat{\chapter}[display]
    {\normalfont\Huge\bfseries\color{neoncyan}}
    {}
    {0pt}
    {\begin{tikzpicture}[remember picture, overlay]
        \fill[chapterbg] (current page.north west) rectangle ([yshift=-7cm]current page.north east);
        % Neon glow lines
        \draw[neoncyan, line width=2pt] ([yshift=-7cm]current page.north west) -- ([yshift=-7cm]current page.north east);
        \draw[neonpink, line width=0.8pt, opacity=0.5] ([yshift=-6.9cm]current page.north west) -- ([yshift=-6.9cm]current page.north east);
        \draw[neoncyan, line width=0.3pt, opacity=0.2] ([yshift=-6.7cm]current page.north west) -- ([yshift=-6.7cm]current page.north east);
        % Circuit traces
        \foreach \x in {2,4,...,18} {
            \draw[neoncyan, line width=0.2pt, opacity=0.08] ([xshift=\x cm, yshift=-1cm]current page.north west) -- ([xshift=\x cm, yshift=-7cm]current page.north west);
        }
        \foreach \y in {-2,-3,...,-6} {
            \draw[neonpink, line width=0.2pt, opacity=0.06] ([yshift=\y cm]current page.north west) -- ([yshift=\y cm]current page.north east);
        }
        % Dot grid with glow
        \foreach \x in {2,4,...,18} {
            \foreach \y in {-1.5,-3,...,-6.5} {
                \fill[neoncyan, opacity=0.2] ([xshift=\x cm, yshift=\y cm]current page.north west) circle (1.2pt);
                \fill[neoncyan, opacity=0.05] ([xshift=\x cm, yshift=\y cm]current page.north west) circle (3pt);
            }
        }
        % Glowing orb
        \fill[neonpink, opacity=0.08] ([xshift=-3cm, yshift=-3.5cm]current page.north east) circle (2.5cm);
        \fill[neoncyan, opacity=0.06] ([xshift=2cm, yshift=-4cm]current page.north west) circle (2cm);
    \end{tikzpicture}\vspace{-20pt}}
    [\vspace{8pt}{\color{dimtext}\small\itshape // ZPWR ENCYCLOPEDIA // CYBERPUNK EDITION //}]

\hypersetup{colorlinks=true,linkcolor=neoncyan,urlcolor=neongreen,
    pdftitle={The ZPWR Encyclopedia},pdfauthor={MenkeTechnologies}}

\begin{document}

\begin{titlepage}
\begin{tikzpicture}[remember picture, overlay]
    % Full page gradient wash
    \fill[bg] (current page.south west) rectangle (current page.north east);
    \shade[top color=neoncyan!8!bg, bottom color=bg]
        (current page.north west) rectangle ([yshift=-10cm]current page.north east);
    \shade[bottom color=neonpink!6!bg, top color=bg]
        ([yshift=8cm]current page.south west) rectangle (current page.south east);
    % Hexagonal grid background
    \foreach \x in {0,1.5,...,21} {
        \foreach \y in {0,1.732,...,29.7} {
            \pgfmathsetmacro{\xshift}{mod(round(\y/1.732),2)*0.75}
            \draw[neoncyan, line width=0.15pt, opacity=0.04]
                ([xshift=\x cm + \xshift cm, yshift=-\y cm]current page.north west)
                ++(30:0.5) -- ++(330:0.5) -- ++(270:0.5) -- ++(210:0.5) -- ++(150:0.5) -- ++(90:0.5) -- cycle;
        }
    }
    % Scanlines
    \foreach \y in {0,0.25,...,29.7} {
        \draw[white, line width=0.1pt, opacity=0.015]
            ([yshift=-\y cm]current page.north west) -- ([yshift=-\y cm]current page.north east);
    }
    % Neon glow bars
    \draw[neoncyan, line width=3pt] ([yshift=-3cm, xshift=1.5cm]current page.north west) -- ([yshift=-3cm, xshift=-1.5cm]current page.north east);
    \draw[neonpink, line width=1.5pt, opacity=0.7] ([yshift=-3.15cm, xshift=1.5cm]current page.north west) -- ([yshift=-3.15cm, xshift=-1.5cm]current page.north east);
    \draw[neoncyan, line width=0.5pt, opacity=0.3] ([yshift=-3.35cm, xshift=1.5cm]current page.north west) -- ([yshift=-3.35cm, xshift=-1.5cm]current page.north east);
    \draw[neoncyan, line width=3pt] ([yshift=3cm, xshift=1.5cm]current page.south west) -- ([yshift=3cm, xshift=-1.5cm]current page.south east);
    \draw[neonpink, line width=1.5pt, opacity=0.7] ([yshift=2.85cm, xshift=1.5cm]current page.south west) -- ([yshift=2.85cm, xshift=-1.5cm]current page.south east);
    \draw[neoncyan, line width=0.5pt, opacity=0.3] ([yshift=2.65cm, xshift=1.5cm]current page.south west) -- ([yshift=2.65cm, xshift=-1.5cm]current page.south east);
    % Glowing orbs
    \fill[neoncyan, opacity=0.06] ([xshift=3cm, yshift=-5cm]current page.north west) circle (2cm);
    \fill[neonpink, opacity=0.04] ([xshift=-4cm, yshift=6cm]current page.south east) circle (3cm);
    \fill[neongreen, opacity=0.03] ([xshift=8cm, yshift=-15cm]current page.north west) circle (1.5cm);
    % Data streams (diagonal lines)
    \foreach \i in {1,...,8} {
        \pgfmathsetmacro{\xoff}{\i * 2.5}
        \draw[neoncyan, line width=0.2pt, opacity=0.06]
            ([xshift=\xoff cm]current page.south west) -- ([xshift=\xoff cm + 3cm]current page.north west);
    }
\end{tikzpicture}
\vspace*{5cm}
\begin{center}
{\fontsize{42}{50}\selectfont\bfseries\color{neoncyan} THE ZPWR}\\[0.5cm]
{\fontsize{42}{50}\selectfont\bfseries\color{neonpink} ENCYCLOPEDIA}\\[2cm]
{\Large\color{bodytext} A Hacker's Field Guide to the Terminal}\\[2cm]
''' + r'''{\large\color{neonyellow}''' + str(num_chapters) + r''' Chapters\quad\color{dimtext}//\quad\color{neonorange}''' + str(num_verbs) + r'''+ Verbs}\\[2cm]
''' + r'''{\color{bodytext}\large MenkeTechnologies}\\[0.3cm]
{\color{dimtext}\small \url{https://github.com/MenkeTechnologies/zpwr}}\\[3cm]
{\color{dimtext}\small CYBERPUNK EDITION\quad//\quad Generated from \texttt{zpwr wizard}}\\[1cm]
''' + figlet_include + r'''
\end{center}
\end{titlepage}

{\hypersetup{linkcolor=neoncyan}\tableofcontents}

'''

# Map section titles (lowercase) to screenshot filenames
section_screenshots = {
    'startup performance': 'zpwr_bench_help.png',
    'benchmarking startup': 'zpwr_bench_help.png',
    'flame charts': 'zpwr_flame_help.png',
    'the doctor is in': 'zpwr_doctor_help.png',
    'command autopsy': 'zpwr_trace_help.png',
    'dependency cartography': 'zpwr_deps_help.png',
    'environment snapshots': 'zpwr_snapshot_help.png',
    'snapshots': 'zpwr_snapshot_help.png',
    'command replay': 'zpwr_replay_help.png',
    'file watching': 'zpwr_watch_help.png',
    'temprs: the stack machine': 'temprs_help.png',
    'temprs: advanced': 'temprs_help.png',
    'lsofrs: network': 'lsofrs_help.png',
    'eza: ls evolved': 'eza_listing.png',
    'eza: colors': 'eza_listing.png',
    'bat: syntax': 'bat_sample.png',
    'bat: configuration': 'bat_zshrc.png',
    'fd: find for humans': 'fd_help.png',
    'fd: integration': 'fd_zsh_files.png',
    'ripgrep: grep reimagined': 'rg_help.png',
    'ripgrep: advanced': 'rg_search.png',
    'perl oneliners: the secret': 'perl_version.png',
    'live dashboard': 'zpwr_bench_help.png',
}

# Map chapter names (lowercase) to screenshot filenames
chapter_screenshots = {
    'the red pill': 'art_jack_in.png',
    'navigation': 'art_the_grid.png',
    'git dimension': 'art_data_stream.png',
    'search engine': 'figlet_scan.png',
    'editor mastery': 'art_neural_link.png',
    'performance cult': 'zpwr_bench_help.png',
    'health': 'zpwr_doctor_help.png',
    'environment mastery': 'art_system_core.png',
    'janitor': 'art_override.png',
    'build system': 'figlet_exec.png',
    'monitoring': 'zpwr_watch_help.png',
    'utility arsenal': 'art_mainframe.png',
    'emacs': 'art_neural_link.png',
    'tmux warfare': 'art_hack_the_planet.png',
    'network': 'art_firewall.png',
    'logging': 'art_data_stream.png',
    'introspection': 'art_deep_dive.png',
    'installation': 'figlet_init.png',
    'batch': 'art_override.png',
    'forgit': 'art_the_grid.png',
    'environment variables': 'art_system_core.png',
    'creative': 'figlet_zpwr.png',
    'tips': 'art_hack_the_planet.png',
    'complete reference': 'figlet_docs.png',
    'powerlevel10k': 'art_neural_link.png',
    'zinit': 'art_system_core.png',
    'zsh internal': 'art_deep_dive.png',
    'fzf': 'figlet_scan.png',
    'tmux deep': 'art_mainframe.png',
    'vim deep': 'art_neural_link.png',
    'temprs': 'temprs_help.png',
    'lsofrs': 'lsofrs_help.png',
    'eza': 'eza_listing.png',
    'bat': 'bat_zshrc.png',
    'fd-find': 'fd_zsh_files.png',
    'ripgrep': 'rg_search.png',
    'neovim': 'art_neural_link.png',
    'perl': 'perl_version.png',
    'hidden': 'art_mainframe.png',
    'quality': 'figlet_trace.png',
    'colorization': 'art_data_stream.png',
    'the end': 'art_hack_the_planet.png',
    'keybinding': 'art_the_grid.png',
}

def insert_image(f, img_name, width=0.8):
    img_path = os.path.join(screenshotdir, img_name)
    if os.path.exists(img_path):
        f.write(f'\n\\begin{{center}}\n\\includegraphics[width={width}\\textwidth]{{{img_path}}}\n\\end{{center}}\n\n')

with open(outfile, 'w') as f:
    f.write(PREAMBLE)
    current_chapter = ""
    cmd_buffer = []

    def _protect_bracket(s):
        """Protect [ at start of line from being parsed as \\[optional]"""
        if s.lstrip().startswith('['):
            return '{[}' + s.lstrip()[1:]
        return s

    def flush_cmds():
        if cmd_buffer:
            f.write('\\begin{codebox}\n')
            for c in cmd_buffer:
                f.write(f'{_protect_bracket(c)}\\\\\n')
            f.write('\\end{codebox}\n\n')
            cmd_buffer.clear()

    for filepath in pages:
        title, chapter, prints = extract_page(filepath)
        if not title: continue
        if chapter and chapter != current_chapter:
            flush_cmds()
            current_chapter = chapter
            ch_display = re.sub(r'^CHAPTER \d+:\s*', '', escape_latex(strip_colors(chapter)))
            f.write(f'\n\\chapter{{{ch_display}}}\n\n')
            # Insert chapter screenshot
            ch_lower = strip_colors(chapter).lower()
            for key, img in chapter_screenshots.items():
                if key in ch_lower:
                    insert_image(f, img, 0.85)
                    break
        flush_cmds()
        clean_title = escape_latex(strip_colors(title))
        f.write(f'\\section{{{clean_title}}}\n\n')
        # Insert section screenshot
        title_lower = strip_colors(title).lower()
        for key, img in section_screenshots.items():
            if key in title_lower:
                insert_image(f, img)
                break
        # Detect keybinding dump pages — don't join lines
        is_keybinding_page = chapter and ('KEYBINDING' in chapter.upper() or 'APPENDIX B' in chapter.upper())
        text_buffer = []
        def flush_text():
            if text_buffer:
                if is_keybinding_page:
                    # Each line stays separate in keybinding dumps
                    for t in text_buffer:
                        f.write(f'{_protect_bracket(t)}\\\\\n')
                    f.write('\n')
                else:
                    f.write(fix_prose(' '.join(text_buffer)) + '\n\n')
                text_buffer.clear()

        for line in prints:
            result = convert_line(line)
            if result is None:
                flush_text()
                flush_cmds()
                continue
            rtype, content = result
            if rtype == 'heading':
                flush_text()
                flush_cmds()
                f.write(f'\n\\vspace{{10pt}}\n{{\\large\\bfseries\\color{{neoncyan}} {content}}}\\vspace{{6pt}}\n\n')
            elif rtype == 'section_title':
                flush_text()
                flush_cmds()
                f.write(f'\n\\vspace{{12pt}}\n{{\\bfseries\\color{{neonyellow}} {content}}}\\vspace{{4pt}}\n\n')
            elif rtype == 'command':
                flush_text()
                cmd_buffer.append(content)
            elif rtype == 'comment':
                flush_text()
                flush_cmds()
                f.write(f'{{\\small\\itshape\\color{{dimtext}} {content}}}\n\n')
            else:
                flush_cmds()
                text_buffer.append(content)
        flush_text()
        flush_cmds()
        f.write('\n\\vspace{16pt}\n\n')
    f.write('\\end{document}\n')

print(f"Generated {outfile} from {len(pages)} pages")
