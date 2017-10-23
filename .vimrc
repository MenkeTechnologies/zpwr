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
filetype off                  " required

"{{{                    MARK:Vundle
"**************************************************************
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
""}}}***********************************************************
filetype plugin indent on    " required
filetype plugin on


"{{{                    MARK:Mappings
"**************************************************************
imap jk <Esc>

"faster movements, used in any modes
noremap <c-j> 4j
noremap <c-k> 4k
noremap <c-h> 4h
noremap <c-l> 4l
nnoremap <silent> <C-D> :update<CR>
vnoremap <silent> <C-D> :<C-C>:update<CR>
inoremap <silent> <C-D> <C-[>:update<CR>a

nnoremap <silent> <C-G> :w<CR>:Dispatch<CR>
nnoremap <silent> <C-H> wgUl

"vnoremap <silent> <C-G> :<C-C>:w<CR>:Dispatch<CR>
inoremap <silent> <C-G> <C-[>:w<CR>:Dispatch<CR>a

vnoremap < <gv
vnoremap > >gv

vnoremap <C-c> "*y
 
" Repeat last command in the next tmux pane.
function TmuxRepeat()
    let supportedTypes=['sh','py','rb','pl', 'clj', 'vim', 'lisp', 'hs', 'coffee']
    let exeFileType=expand('%:e')
    if index(supportedTypes, exeFileType) >= 0
        silent! exec "!tmux send-keys -t right C-c 'bash \"$SCRIPTS/runner.sh\"' ' \"' ".expand('%:p')." '\"' C-m"
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

nnoremap <silent> <C-z> :w<CR>:call TmuxRepeat()<CR>
inoremap <silent> <C-z> <C-[>:w<CR>:call TmuxRepeat()<CR>a

nnoremap <silent> <C-F> :w<CR>:call TmuxRepeatGeneric()<CR>
"vnoremap <silent> <C-V> :<C-C>:w<CR>:call TmuxRepeat()<CR>
inoremap <silent> <C-F> <C-[>:w<CR>:call TmuxRepeatGeneric()<CR>a

nnoremap <silent> <Esc>t mbgg=G`b
inoremap <silent> <Esc>t <ESC>mbgg=G`ba

nnoremap <silent> <C-Y> :reg<CR>
vnoremap <silent> <C-Y> :<C-C>:reg<CR>
inoremap <silent> <C-Y> <C-[>:reg<CR>

nnoremap <silent> <C-C> :wq!<CR>:qa!<CR>
"vnoremap <silent> <C-C> :<C-C>:wq!<CR>:qa!<CR>
inoremap <silent> <C-C> <C-[>:wq!<CR>:qa!<CR>

nnoremap <silent> <C-E> :q!<CR>
vnoremap <silent> <C-E> :<C-C>:q!<CR>
inoremap <silent> <C-E> <C-[>:q!<CR>

inoremap <silent> <C-T> <ESC>I//<ESC>ji
inoremap <silent> <C-B> <ESC>^xx<ESC>ji

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
    exe ":normal jj^zz"
    let &wrapscan = oldwrap
    unlet oldwrap
endf

function! IndentSqueeze()
    silent! exe ":normal mbgg=G"
    silent! exe " 1,$!cat -s"
    silent! exe ":normal `bzz"
    redraw!
endfunction

function! Indent()
    exe ":normal mbgg=G"
    exe ":normal `bzz"
endfunction

nnoremap <silent> <leader>z :call IndentSqueeze()<cr>
"for navigating thru fold markers set by vim
inoremap <silent> <C-down> <C-[>:<C-U>call GoToNextMarker("{{{",0)<CR>i
inoremap <silent> <C-up> <C-[>:<C-U>call GoToNextMarker("{{{",1)<CR>i
nnoremap <silent> <C-down> :<C-U>call GoToNextMarker("{{{",0)<CR>
nnoremap <silent> <C-up> :<C-U>call GoToNextMarker("{{{",1)<CR>

function Quoter()
    "w,e,b will not see these characters as delimiters
    set iskeyword+=/
    set iskeyword+=$
    set iskeyword+={
    set iskeyword+=(
    set iskeyword+=)
    set iskeyword+=}
    set iskeyword+=-
    set iskeyword+=\
    set iskeyword+=.
endfunction

function Reset()
    set iskeyword&
endfunction

let blacklist=['md', 'sh','hs']

augroup indentGroup
    autocmd!

    let currentFileEnding=tolower(expand('%:e'))
    "if the filetype is not in blacklist (index = -1) then we will indent
    if index(blacklist, currentFileEnding) < 0
        autocmd CursorHoldI * :call Indent()
    endif
augroup end

nnoremap <silent> <leader>" :call Quoter()<CR>lmaea"<ESC>bi"<ESC>:call Reset()<CR>`a
nnoremap <silent> <leader>' :call Quoter()<CR>lmaea'<ESC>bi'<ESC>:call Reset()<CR>`a

inoremap <silent> <C-U> <Esc>:silent !open -t %:p:h<CR>:redraw!<CR>a
nnoremap <silent> <C-U> :silent !open -t %:p:h<CR>:redraw!<CR>

nnoremap <silent> <leader>n :n<CR>
inoremap <F8> <ESC>:%s///g<Left><Left><Left>
nnoremap <F8> :%s///g<Left><Left><Left>
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
set pastetoggle=<ESC>p
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
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

" :e will find files automatically in these locations
set path+=~/Desktop
set path+=~/Documents/shellScripts

colorscheme badwolf

"common mispellings
iabbrev teh the
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
inoremap <silent> <C-T> <C-X><C-K>
"easier mapping for thesaurus completion
inoremap <silent> <ESC>t <C-X><C-T>
