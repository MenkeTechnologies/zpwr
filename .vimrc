"{{{                    MARK:NeoBundle
"**************************************************************
"NeoBundle Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

"""" Required:
"set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
"call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
"NeoBundleFetch 'Shougo/neobundle.vim'

"NeoBundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" Required:
"call neobundle#end()

" Required:
filetype plugin indent on

"}}}***********************************************************

""{{{                    MARK:Settings
""**************************************************************
"backslash replaced by comma
let mapleader = ','

set nocompatible              " be iMproved, required
"for YouCompleteMe doc window to open at bottom
set splitright
set noswapfile
set nowritebackup
set ruler
set autoread
set ignorecase
set smartcase
set tabstop=4
set statusline+=%F
set statusline+=%=
set statusline+=Row:\%l
set statusline+=/
set statusline+=%L
set statusline+=\  
set statusline+=Col:\ %c
set laststatus=2
set wrapscan
set t_Co=256
set backspace=2
set encoding=utf8
set autoindent
se showmatch
set showmode
set hlsearch
set incsearch
set mouse=a
set shiftwidth=4 "indent set to four spaces
set expandtab
set number
set wildmenu
syntax on
set grepprg=ag

"show the leader
set showcmd
"for copying to system clipboard
"set clipboard=unnamed

set list listchars=tab:\ \ ,trail:·
""}}}***********************************************************

"{{{                    MARK:Vundle
"**************************************************************
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'TerryMa/vim-multiple-cursors'
Plugin 'luochen1990/rainbow'

Plugin 'craigemery/vim-autotag'
Plugin 'beloglazov/vim-online-thesaurus'

let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

let g:rainbow_conf = {
            \	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \	'operators': '_,_',
            \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \	'separately': {
            \		'*': {},
            \		'tex': {
            \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \		},
            \		'lisp': {
            \			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \		},
            \		'vim': {
            \			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \		},
            \		'html': {
            \			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \		},
            \		'css': 0,
            \	}
            \}

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin '907th/vim-auto-save'
Plugin 'severin-lemaignan/vim-minimap'


let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
let g:auto_save_events = ["InsertLeave", "TextChanged", "TextChangedI"]


let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>']
let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = { '*': 0}

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_complete_in_comments=1

let g:session_autosave = 'no'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive' }

let g:syntastic_sh_checkers=['shellcheck']

let g:session_autoload = 'no'

let g:ackprg = 'ag --vimgrep'
let g:ctrlp_arg_map = 1
"tree style file explorer
let g:netrw_liststyle=3

highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_highlight_lines = 0

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
" or maybe...
"let g:slime_paste_file = tempname()
"let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":"}

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"
"
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings = 1


let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

"too slow with icons
let g:webdevicons_enable_nerdtree=0


call vundle#end()            " required

filetype plugin indent on    " required
filetype plugin on

""}}}***********************************************************

"{{{                    MARK:Mappings
"**************************************************************

"faster movements, used in any modes
noremap <c-j> 4j
noremap <c-k> 4k
noremap <c-h> 4h
noremap <c-l> 4l

nnoremap <silent> <C-G> :w<CR>:Dispatch<CR>

"vnoremap <silent> <C-G> :<C-C>:w<CR>:Dispatch<CR>
inoremap <silent> <C-G> <C-[>:w<CR>:Dispatch<CR>a

vnoremap < <gv
vnoremap > >gv

"copy to system clipboard
vnoremap <C-B> "*y

inoremap <silent> <C-L> <ESC>mbgg=G`bzza

"transpose words (like emacs `transpose-words')
function! TransposeWords()
    if search('\w\+\%#\w*\W\+\w\+')
    elseif search('\w\+\W\+\%#\W*\w\+')
    endif
    let l:pos = getpos('.')
    exec 'silent! :s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/'
    call setpos('.', l:pos)
    let l:_ = search('\(\%#\w\+\W\+\)\@<=\w\+')
    normal el
endfunction

"Transpose Chars Like Emacs
nnoremap <silent> <C-T> xp
inoremap <c-t> i<bs><c-o>:silent! undojoin \| normal! xp<cr>

"Transpose Words Like Emacs
nnoremap <silent> <ESC><C-T> :call TransposeWords()<CR>
inoremap <silent> <ESC><C-T> <C-O>:call TransposeWords()<CR>

nnoremap <ESC><C-C> wvU

"Insert mode mappings:
inoremap <ESC><C-C> <C-O>w<C-O>vU

"Ctrl-C exits like in shell
nnoremap <silent> <C-C> :wq!<CR>:qa!<CR>
"vnoremap <silent> <C-C> :<C-C>:wq!<CR>:qa!<CR>
inoremap <silent> <C-C> <C-[>:wq!<CR>:qa!<CR>

nnoremap <silent> <C-D> :update<CR>
vnoremap <silent> <C-D> :<C-C>:update<CR>
inoremap <silent> <C-D> <C-[>:update<CR>

nnoremap <silent> <C-W> :update<CR>:SyntasticCheck<CR>
vnoremap <silent> <C-W> :<C-C>:update<CR>:SyntasticCheck<CR>
inoremap <silent> <C-W> <C-[>:update<CR>:SyntasticCheck<CR>a

nnoremap <silent> <C-E> :q!<CR>
vnoremap <silent> <C-E> :<C-C>:q!<CR>
inoremap <silent> <C-E> <C-[>:q!<CR>

"comment out
inoremap <silent> <C-B> <ESC>I//<ESC>ji
inoremap <silent> <ESC><C-B> <ESC>^2xji

nnoremap <silent> <C-I> :SaveSession<CR>
vnoremap <silent> <C-I> :<C-C>:SaveSession<CR>
inoremap <silent> <C-I> <C-[>:SaveSession<CR>a

nnoremap <silent> <leader>q :qa!<CR>
nnoremap <silent> <leader>w :w!<CR>
nnoremap <silent> <leader>s :vs<CR>
nnoremap <silent> <leader>h :sp<CR>
nnoremap <silent> <leader>t :tabnew<CR>

onoremap <silent> i# ?#<CR>jV/#<CR>kc

fun GoToNextMarker(searchTerm, backwardsSearch)
    let oldwrap = &wrapscan
    set nowrapscan
    let loopCounter = 0
    if v:count == 0
        let mycount = 1
    else
        let mycount = v:count
    endif

    while loopCounter < mycount
        if a:backwardsSearch == 0
            silent! exe "/".a:searchTerm 
        else
            silent! exe "?".a:searchTerm 
            silent! exe "?".a:searchTerm
        endif
        let loopCounter += 1
    endw
    exe "normal jj^zz"
    let &wrapscan = oldwrap
    unlet oldwrap
endf

function! IndentSqueeze()
    silent! exe "normal! mbgg=G"
    silent! exe "1,$!cat -s"
    silent! exe "normal! `bzz"
    redraw!
endfunction

function! Indent()
    exe ":normal mbgg=G"
    exe ":normal `bzz"
endfunction

nnoremap <silent> <leader>z :call IndentSqueeze()<cr>
"for navigating thru fold markers set by vim
inoremap <silent> <C-Down> <C-[>:<C-U>call GoToNextMarker("{{{",0)<CR>i
inoremap <silent> <C-Up> <C-[>:<C-U>call GoToNextMarker("{{{",1)<CR>i
nnoremap <silent> <C-Down> :<C-U>call GoToNextMarker("{{{",0)<CR>
nnoremap <silent> <C-Up> :<C-U>call GoToNextMarker("{{{",1)<CR>

function InsertEOLVar(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    "move to last char on line
    exe "normal! g_"
    exe "normal! a".a:toInsert
    exe "silent! normal! `b"
endfunction

function InsertEquals(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! T".a:front
    exe "normal! i".a:toInsert
    "move to last char on line
    exe "normal! g_"
    exe "normal! a".a:toInsert
    exe "silent! normal! `b"
endfunction

function InsertVar(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    exe "normal! f ".a:back
    exe "normal! i".a:toInsert
    exe "normal! `b"
endfunction
function InsertVarPunct(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    exe "normal! f".a:back
    exe "normal! i".a:toInsert
    exe "normal! `b"
endfunction

function InsertBackTick(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! f".a:back
    exe "normal! a".a:toInsert
    exe "normal! F".a:front
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    exe "normal! `b"
endfunction

function InsertMatchingPunct(toInsert, front)
    exe "normal! lmb"
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    exe "normal! ll%"
    exe "normal! a".a:toInsert
    exe "normal! `b"
endfunction

function Insert(toInsert, front, back)
    exe "normal! lmb"
    exe "normal! f".a:back
    exe "normal! a".a:toInsert
    exe "normal! F".a:front
    exe "normal! i".a:toInsert
    exe "normal! `b"
endfunction

function ReplaceBracket(open,close, openR, closeR)
    exe "normal! mb"
    exe "normal! F".a:open
    exe "normal! hxx"
    exe "normal! i".a:openR.a:openR
    exe "normal! f".a:close
    exe "normal! xx"
    exe "normal! i".a:closeR.a:closeR
    exe "normal! `b"
endfunction

function ReplaceBracketToDouble(open,close, openR, closeR)
    exe "normal! mb"
    exe "normal! F".a:open
    exe "normal! x"
    exe "normal! i".a:openR.a:openR
    exe "normal! f".a:close
    exe "normal! x"
    exe "normal! i".a:closeR.a:closeR
    exe "normal! `bl"
endfunction

function ReplaceBracketToSingle(open,close, openR, closeR)
    exe "normal! mb"
    exe "normal! F".a:open
    exe "normal! hxx"
    exe "normal! i".a:openR
    exe "normal! f".a:close
    exe "normal! xx"
    exe "normal! i".a:closeR
    exe "normal! `bh"
endfunction


function InsertQuoteVisualMode(type)
    let sym=1

    if a:type == "single"
        let quote="'"
        "if matches echo .* L=echo R=last non space
    elseif a:type == "double"
        let quote='"'
    elseif a:type == "back"
        let quote="`"
    elseif a:type == "bracket"
        let quoteL="["
        let quoteR="]"
        let sym=0
    elseif a:type == "curlybracket"
        let quoteL="{"
        let quoteR="}"
        let sym=0
    elseif a:type == "paren"
        let quoteL="("
        let quoteR=")"
        let sym=0
    endif

    if sym == 1 
        exe "normal! `<"
        let lineNumR=line('.')
        exe "normal! i".quote
        exe "normal! `>"
        let lineNumL=line('.')

        if lineNumL == lineNumR
            exe "normal! la".quote
            exe "normal! gv"
            exe "normal! ll"
        else
            exe "normal! a".quote
            exe "normal! gv"
            exe "normal! l"
        endif
    else
        exe "normal! `<"
        let lineNumR=line('.')
        exe "normal! i".quoteL
        exe "normal! `>"
        let lineNumL=line('.')
        if lineNumL == lineNumR
            exe "normal! la".quoteR
            exe "normal! gv"
            exe "normal! ll"
        else
            exe "normal! a".quoteR
            exe "normal! gv"
            exe "normal! l"
        endif
    endif
endfunction

let g:COUNTER=0

function Quoter(type)
    let line=getline('.')
    let wordCursor=expand("<cword>")
    let charCursor=nr2char(strgetchar(getline('.')[col('.') - 1:], 0))

    let colIndex=col('.')

    if a:type == "single"
        let quote="'"
        "if matches echo .* L=echo R=last non space
    elseif a:type == "double"
        let quote='"'
    elseif a:type == "back"
        let quote="`"
    endif

    if a:type == "bracket"
        let lineToEnd=strpart(line, colIndex-1, col('$'))
        let matchingIndexParen=stridx(lineToEnd, '))')+1
        let matchingIndexDblB=stridx(lineToEnd, ']]')+1
        let matchingIndexB=stridx(lineToEnd, ']')+1

        let indexes = [matchingIndexB, matchingIndexParen, matchingIndexDblB]

        let least = 9999

        for i in indexes
            if i < least
                if i > 0
                    let least=i
                endif
            endif

        endfor
        "echo "lineToEnd ".lineToEnd
        "echo "matching index )".matchingIndexParen
        "echo "matching index ]]".matchingIndexDblB
        "echo "matching index ]".matchingIndexB
        "echo "least index ]".least

        let lineToPunct=strpart(lineToEnd, 1,least)
        "echo "line to punct: ".lineToPunct

        if (lineToPunct=~ '\v.*\]\].*')
            call ReplaceBracket("[","]", "(",")")
            echo "Replace [[]] with (())"
        elseif (lineToPunct=~ '\v.*\)\).*')
            call ReplaceBracketToSingle("(",")","[","]") 
            echo "Replace (()) with []"
        else
            call ReplaceBracketToDouble("[","]","[","]") 
            echo "Replace [] with [[]]"
        endif 
        let g:COUNTER=g:COUNTER +1
        return 0
    endif
    "if line matches regex and cursor position within matching capture group
    "then run the quoting

    if (line =~ '\v^.*\$\(.*\).*$') 
        call InsertMatchingPunct(quote, '$')
        echo "$(command substitution)"
    elseif (line =~ '\v^.*\$\{.*\}.*$') 
        call InsertMatchingPunct(quote, '$')
        echo "${parameter substitution}"
    elseif (line =~'\v\s*\w+\=\w+\s*$')
        call InsertEquals(quote, '=', '')
        echo "var=value"
    elseif (line =~ '\v.*`.*`.*')
        call InsertBackTick(quote, '`', '`')
        echo "`command substitution`"
    elseif (line =~ '\v.*\$(\w|\$|\!|\?|\/|\.|\"|`|\'')+\).*')
        call InsertVarPunct(quote, '$', ')')
        echo "$var)"
    elseif (line =~ '\v.*\$(\w|\$|\!|\?|\/|\.|\"|`|\'')+\].*')
        call InsertVarPunct(quote, '$', ']')
        echo "$var]"
    elseif (line =~ '\v.*\$(\w|\$|\!|\?|\/|\.|\"|`|\'')+\s.*')
        call InsertVar(quote, '$', '/\s')
        echo "$var "
    elseif (line =~ '\v.*\$(\w|\$|\!|\?|\/|\.|\"|\`|\'')+$')
        call InsertEOLVar(quote, '$', '')
        echo "$varEOL"
    else
        echo "Unknown Quoting Option:".line
    endif

endfunction



let blacklist=['md', 'sh','hs', 'pl']

augroup indentGroup
    autocmd!

    let currentFileEnding=tolower(expand('%:e'))
    "if the filetype is not in blacklist (index = -1) then we will indent
    if index(blacklist, currentFileEnding) < 0
        autocmd CursorHoldI * :call Indent()
    endif
augroup end

let os = substitute(system('uname'), "\n", "", "")
"mac and linux send different codes for Ctrl arrow keys
if os == "Darwin"
    map <ESC>[1;5A <C-Up>
    map <ESC>[1;5B <C-Down>
    map <ESC>[1;5C <C-Right>
    map <ESC>[1;5D <C-Left>
elseif os == "Linux"
    map <ESC>[A <C-Up>
    map <ESC>[B <C-Down>
    map <ESC>[C <C-Right>
    map <ESC>[D <C-Left>

endif

"{{{                    MARK:Quoter Mappings
"**************************************************************
nnoremap <silent> <leader>" :call Quoter("double")<CR>
nnoremap <silent> <leader>' :call Quoter("single")<CR>
nnoremap <silent> <leader>` :call Quoter("back")<CR>
nnoremap <silent> <leader>[ :call Quoter("bracket")<CR>

vnoremap <silent> <leader>" :call InsertQuoteVisualMode("double")<CR>
vnoremap <silent> <leader>' :call InsertQuoteVisualMode("single")<CR<CR>
vnoremap <silent> <leader>` :call InsertQuoteVisualMode("back")<CR>
vnoremap <silent> <leader>[ :call InsertQuoteVisualMode("bracket")<CR>
vnoremap <silent> <leader>{ :call InsertQuoteVisualMode("curlybracket")<CR>
vnoremap <silent> <leader>( :call InsertQuoteVisualMode("paren")<CR>


"}}}***********************************************************
inoremap <silent> <C-U> <Esc>:silent !open -t %:p:h<CR>:redraw!<CR>a
nnoremap <silent> <C-U> :silent !open -t %:p:h<CR>:redraw!<CR>

nnoremap <Tab> :SaveSession!<CR><CR>
nnoremap <silent> <leader>n :n<CR>
inoremap <F8> <ESC>:%s@@@g<Left><Left><Left>
nnoremap <F8> :%s@@@g<Left><Left><Left>
map <F1> :NERDTreeToggle<CR>
inoremap <F1> <ESC>:NERDTreeToggle<CR>
map <F2> :UndotreeToggle<CR>
inoremap <F2> <ESC>:UndotreeToggle<CR>
map <F3> :TlistAddFiles *<CR>:TlistToggle<CR>
inoremap <F3> <ESC>:TlistAddFiles *<CR>:TlistToggle<CR>
map <F4> :MinimapToggle<CR>
inoremap <F4> <ESC>:MinimapToggle<CR>
map <F5> :LOTRToggle<CR>
inoremap <F5> <ESC>:LOTRToggle<CR>
map <F6> :SyntasticToggleMode<CR>
inoremap <F6> <ESC>:SyntasticToggleMode<CR>

map <F7> :TTags<CR>
inoremap <F7> <ESC>:TTags<CR>

map <silent> <leader><leader>w <Plug>(easymotion-bd-w)
map <silent> <leader><leader>e <Plug>(easymotion-bd-e)
"map <silent> <leader><leader>b <Plug>(easymotion-bd-b)

"for moving selection up and down, displacing other text 
xmap <C-Down> :m '> + <CR> gv
xmap <C-Up> :m '< -- <CR> gv

map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e
set pastetoggle=<F9>

" Repeat last command in the next tmux pane.
function TmuxRepeat()
    let supportedTypes=['sh','py','rb','pl', 'clj', 'tcl', 'vim', 'lisp', 'hs', 'coffee', 'lua']
    let exeFileType=expand('%:e')
    if index(supportedTypes, exeFileType) >= 0
        silent! exec "!tmux send-keys -t right C-c 'bash \"$SCRIPTS/runner.sh\"' ' \"' ".fnameescape(expand('%:p'))." '\"' C-m"
        redraw!
    else
        silent! exec "!tmux send-keys -t right C-c up C-m"
        echom "Unknown Filetype '".exeFileType. "'. Falling Back to Prev Command!"
        redraw!
    endif
    exe "normal! zz"
endfunction

function TmuxRepeatGeneric()
    silent! exec "!tmux send-keys -t right C-c 'clear' C-m up up C-m"
    redraw!
    exe "normal! zz"
endfunction

" get rid of plugin mapping
autocmd VimEnter * iunmap <C-F>

nnoremap <silent> <C-F> :w<CR>:call TmuxRepeat()<CR>
vnoremap <silent> <C-F> :call NERDComment("x","Toggle")<CR>`>
vnoremap <silent> y y`>
nnoremap <silent> p p`]
autocmd VimEnter * inoremap <silent> <C-F> <C-[>:w<CR>:call TmuxRepeat()<CR>a

nnoremap <silent> <C-V> :w<CR>:call TmuxRepeatGeneric()<CR>
inoremap <silent> <C-V> <C-[>:w<CR>:call TmuxRepeatGeneric()<CR>a
"}}}***********************************************************
"{{{                    MARK:autocmd
"**************************************************************

autocmd filetype text set tags+=~/tags
autocmd filetype * call AutoCorrect()
"uncomment following if you want just want autocorrection in text and markdown files
"autocmd filetype text call AutoCorrect()
"autocmd filetype markdown call AutoCorrect()

autocmd BufReadPre,FileReadPre *.[chy] set cindent
autocmd BufRead * setlocal foldmethod=marker
autocmd BufRead * normal zR
autocmd FileType java let b:dispatch = 'javac %'

"diffing colors
fun! SetDiffColors()
    highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
    highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
    highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
    highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun

autocmd FilterWritePre * call SetDiffColors()

autocmd BufNewFile *.sh silent! exe "!templater.sh %:p" | e
autocmd BufNewFile *.rb silent! exe "!templater.sh %:p" | e
autocmd BufNewFile *.py silent! exe "!templater.sh %:p" | e
autocmd BufNewFile *.pl silent! exe "!templater.sh %:p" | e
autocmd BufNewFile * exe "normal! G" | startinsert!

"}}}***********************************************************
"load all pathogen plugins
execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim


if os == "Darwin"
    set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
elseif os == "Linux"
    set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
endif

" :e will find files automatically in these locations
set path+=~/Desktop
set path+=~/Documents/shellScripts

colorscheme badwolf

"common mispellings
iabbrev tth the
iabbrev adn and
iabbrev waht what
iabbrev tehn then
iabbrev retrun return
iabbrev retunr return
iabbrev delte delete
iabbrev deltee delete
set dictionary+=/usr/share/dict/words
set thesaurus+=~/mthesaur.txt

"easier mapping for dict completion
"inoremap <silent> <C-T> <C-X><C-K>
"easier mapping for thesaurus completion
"inoremap <silent> <ESC>t <C-X><C-T>
