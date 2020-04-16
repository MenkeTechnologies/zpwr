                         ".....     .      ...     ..      ..
                       ".d88888neu. 'l   x*8888x.:*8888: -"888: 
    "...     ..        f""""*8888888f  x   48888x `8888h  8888
  ":~""888h.:^"888:    *      `"*88*"  x8x.  8888x  8888x  !888>
 "8x   `8888x  8888>    -....    ue=:. x8888 x8888  88888   "*8%-
"x888n. 8888x  ?888>           :88n  ` '*888!x8888> x8888  xh8>
"'88888 8888x   ?**h.          9888l     `?8 `8888  x888x x888>
  "`*88 8888~ x88x.     uzu.   `8888l    -^  '888"  x888  8888>
 "..<"  88*`  88888x  ,""888i   ?8888     dx '88~x. !88~  8888>
    "..xc.    `*8888k 4  9888l   %888>  .8888xf.888x:!    x888x.:
  ":888888h.    `%88> '  '8888   '88%  :""888":~"888"     `888*"
 "<  `"888888:    x"       "*8nu.z*"       "~'    "~        ""
       "%888888x.-`
         """**""
"
" https://github.com/menketechnologies
"

"{{{                    mark:neobundle
"**************************************************************
"neobundle scripts-----------------------------
set nocompatible               " be improved
"""" required:
"set runtimepath+=~/.vim/bundle/neobundle.vim/

" required:
"call neobundle#begin(expand('~/.vim/bundle'))

" let neobundle manage neobundle
" required:
"neobundlefetch 'shougo/neobundle.vim'

"neobundle 'tiagofumo/vim-nerdtree-syntax-highlight'

" required:
"call neobundle#end()

"}}}***********************************************************

""{{{                    mark:settings
""**************************************************************
"backslash replaced by space for leader keybindings
let mapleader = "\<space>"

"for youcompleteme doc window to open at bottom
set splitright
set noswapfile
set nowritebackup
set ruler
set autoread
"searches are case insensitive
set ignorecase
"tab is 4 spaces
set tabstop=4
"snap to nearest tabstop
set shiftround
set cindent
set ttyfast
"1000 ms wait for next key in mappings
set timeoutlen=1000
"status bar always shown
set laststatus=2
"/ and ? wrap around EOF
set wrapscan
set t_Co=256
set backspace=2
set encoding=utf8
"jump to matching brace
set showmatch
set showmode
" highlight matches in / and ?
set hlsearch
"search performed for each keypress
set incsearch
" mouse scroling and clicking
set mouse=a
">> and << indent set to four spaces
set shiftwidth=4
set expandtab
"wrap lines
set linebreak
"long line soft wrap indicator
set showbreak=-->
"show line numbers
set number
set backupdir=~/tmp
"tab completion in command mode cycles through menu
set wildmenu
"globbing is case insensitive
set wildignorecase

"file:line:column:match
set grepprg=ag\ --nogroup\ --column\ $*
"file:line:column:match
set grepformat=%f:%l:%c:%m

"visual selection automatically into system clipboard
set guioptions+=a
"font sizee 14 for Hack Nerd Font (powerine symbols)
set guifont=Hack\ Nerd\ Font:h14
"start browsing in current dir
set browsedir=current
"reduce enter key after message alerts
set shortmess=aIcFT

"left gutter fold column
set foldcolumn=2

"1 lines for :cmd window
set cmdheight=1

"including tags in ^N completion
set complete+=]

"show the leader/prefix/number key when pressed
set showcmd

set completeopt=longest,noinsert,noselect,menuone
set omnifunc=zsh_completion#Complete

if ! has('nvim')
    "visual mode automatically copies to system clipboard
    set clipboard=autoselect
endif

"show trailing spaces and tabs
set list listchars=tab:\ \ ,trail:·

"customize .viminfo
set viminfo='1000,<50,s10,h

"show vertical line at 80 chars width
set colorcolumn=80

"gutter update time for vim-gitgutter, vim-boomarks and vim-markology plugins
set updatetime=150
""}}}***********************************************************

"{{{                    MARK:Vundle
"**************************************************************
filetype off                  " required
" set the runtime path to include Vundle and initialize
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'TerryMa/vim-multiple-cursors'
Plugin 'luochen1990/rainbow'
Plugin 'craigemery/vim-autotag'
Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Sublime Like Minimap
Plugin 'severin-lemaignan/vim-minimap'
Plugin '907th/vim-auto-save'
Plugin 'Valodim/vim-zsh-completion'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'wellle/tmux-complete.vim'

if has('nvim')
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
endif

" enable AutoSave on Vim startup
let g:auto_save = 1
" do not display the auto-save notification
let g:auto_save_silent = 1
" when to autosave
let g:auto_save_events = ['InsertLeave', 'TextChanged', 'TextChangedI']

let g:indentLine_setColors = 1

"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1

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

" tab cycles forward through completion
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0

let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'

let g:ycm_key_list_select_completion   = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
" show YCM completion after 1 character
let g:ycm_min_num_of_chars_for_completion = 1

" YCM completion in all files
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = { '*': 0}

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_complete_in_comments=1

" only manual saving of vim sessions
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

"let g:slime_target = "tmux"
"let g:slime_paste_file = "$HOME/.slime_paste"
" or maybe...
"let g:slime_paste_file = tempname()
"let g:slime_default_config = {"socket_name": split($TMUX, ",")[0], "target_pane": ":"}

let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

"too slow with icons
let g:webdevicons_enable_nerdtree=1

"matches JetBrains IDE mappings on macOS
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<C-g>'
let g:multi_cursor_next_key  = '<C-g>'
let g:multi_cursor_quit_key            = '<Esc>'

call vundle#end()            " required

filetype plugin indent on    " required

""}}}***********************************************************

"{{{                    MARK:Mappings
"**************************************************************

"faster movements, used in all modes
nnoremap <c-j> 4j
vnoremap <c-j> 4j
nnoremap <c-k> 4k
vnoremap <c-k> 4k
nnoremap <c-h> 4h
vnoremap <c-h> 4h
nnoremap <c-l> 4l
vnoremap <c-l> 4l

nnoremap <leader>- 4-
vnoremap <leader>- 4-
nnoremap <leader>= 4+
vnoremap <leader>= 4+

"reselect visual mode last region after indenting
vnoremap < <gv
vnoremap > >gv

"copy to system clipboard and move cursor to end of selection
vnoremap <C-B> "*y`>
"copy to tmux clipboard
vnoremap <silent><leader>b :w !tmux set-buffer "$(cat)"<CR><CR>
"for when forgot to do sudo vim <file> and file is readonly
noremap <silent><leader>sudo :w !sudo tee % &>/dev/null<CR><CR><CR>

"indenting and focus line at center of editor
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
    normal! el
endfunction

"Transpose Chars Like Emacs
nnoremap <silent> <C-T> xp

"Transpose Words Like Emacs
nnoremap <silent> <ESC><C-T> :call TransposeWords()<CR>
inoremap <silent> <C-D><C-T> <C-O>:call TransposeWords()<CR>

"rename word under caret
nnoremap <Leader>g :%s/\C\<<C-r><C-w>\>//g<Left><Left>
"rename word under caret with cursor at end of replacement word
nnoremap <Leader>r :%s/\C\<<C-r><C-w>\>/<C-r><C-W>/g<Left><Left>

inoremap <c-t> i<bs><c-o>:silent! undojoin \| normal! xp<cr>

"allow dot to repeat @:
nnoremap <silent><Plug>RepeatEx @: :call repeat#set("\<Plug>RepeatEx")<CR>
nmap @: <Plug>RepeatEx

"move to next word and capitalize
nnoremap <ESC><C-C> wvU

"Insert mode mappings:
"inoremap <C-C> <C-O>w<C-O>vU

"Ctrl-C exits like in shell
nnoremap <silent> <C-C> :wq!<CR>:qa!<CR>
"vnoremap <silent> <C-C> :<C-C>:wq!<CR>:qa!<CR>
inoremap <silent> <C-C> <C-[>:wq!<CR>:qa!<CR>

nnoremap <silent> <C-F> :q!<CR>
vnoremap <silent> <C-F> :<C-C>:q!<CR>

augroup background_group
    autocmd!
    autocmd VimEnter * inoremap <silent> <C-F> <C-[>:q!<CR>
    autocmd VimEnter * set background=dark
    " dont hide json quotes
    autocmd VimEnter * set conceallevel=0
    inoremap <silent> <C-Z> <C-[>:suspend<CR>
augroup end

vnoremap <RightMouse> "*y`>
inoremap <Home> <C-[>ggi
inoremap <End> <C-[>Gi
nnoremap <Home> gg
nnoremap <End> G

"comment out
inoremap <silent> <C-B> <ESC>I//<ESC>ji
inoremap <silent> <C-B><C-N> <ESC>^2xji

"nnoremap <silent> <C-I> :SaveSession<CR>
"vnoremap <silent> <C-I> :<C-C>:SaveSession<CR>
"inoremap <silent> <C-I> <C-[>:SaveSession<CR>a

nnoremap <silent> <leader>q :qa!<CR>
nnoremap <silent> <leader>wq :wq!<CR>
nnoremap <silent> <leader>e :q!<CR>
nnoremap <silent> <leader>w :w!<CR>
"vertical split
nnoremap <silent> <leader>v :vsplit<CR>
"horizontal split
nnoremap <silent> <leader>s :split<CR>
nnoremap <silent> <leader>t :tabnew<CR>

onoremap i# :<c-u>execute "normal! ?^#\rjmy/#\rkmz:nohlsearch\r`yv`z"<cr>
onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>

"#**************************************************************
"}}}

"{{{                    MARK:Custom Fxns
"**************************************************************
"navigate to next or previous vim fold marker
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
            silent! exe '/'.a:searchTerm
        else
            silent! exe '?'.a:searchTerm
            silent! exe '?'.a:searchTerm
        endif
        let loopCounter += 1
    endw
    exe 'normal jj^zz'
    let &wrapscan = oldwrap
    unlet oldwrap
endf

"indent, get rid of pairs of new lines and move cursor to middle of screen
function! IndentSqueeze()
    silent! exe 'normal! mbgg=G'
    silent! exe '1,$!cat -s'
    silent! exe 'norl! `bzz'
    redraw!
endfunction

"indent and move cursor to middle of screen
function! Indent()
    exe ':normal mbgg=G'
    exe ':normal `bzz'
endfunction
"**************************************************************
"}}}

"{{{                    MARK:Find Vim Markers
"**************************************************************
nnoremap <silent> <leader>z :call IndentSqueeze()<cr>
"bind control arrow keys in insert and normal modes to navigate fold markers
inoremap <silent> <C-Down> <C-[>:<C-U>call GoToNextMarker("{{{",0)<CR>i
inoremap <silent> <C-Up> <C-[>:<C-U>call GoToNextMarker("{{{",1)<CR>i
nnoremap <silent> <C-Down> :<C-U>call GoToNextMarker("{{{",0)<CR>
nnoremap <silent> <C-Up> :<C-U>call GoToNextMarker("{{{",1)<CR>

"}}}***********************************************************

"{{{                    MARK:Quoting Fxns
"**************************************************************
function! InsertEOLVar(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    "move to last char on line
    exe 'normal! g_'
    exe 'normal! a'.a:toInsert
    exe 'silent! normal! `b'
endfunction

function! InsertEquals(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! T'.a:front
    exe 'normal! i'.a:toInsert
    "move to last char on line
    exe 'normal! g_'
    exe 'normal! a'.a:toInsert
    exe 'silent! normal! `b'
endfunction

function! InsertVar(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    exe 'normal! f '.a:back
    exe 'normal! i'.a:toInsert
    exe 'normal! `b'
endfunction

function! InsertVarPunct(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    exe 'normal! f'.a:back
    exe 'normal! i'.a:toInsert
    exe 'normal! `b'
endfunction

function! InsertBackTick(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! f'.a:back
    exe 'normal! a'.a:toInsert
    exe 'normal! F'.a:front
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    exe 'normal! `b'
endfunction

function! InsertMatchingPunct(toInsert, front)
    exe 'normal! lmb'
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    exe 'normal! ll%'
    exe 'normal! a'.a:toInsert
    exe 'normal! `b'
endfunction

function! Insert(toInsert, front, back)
    exe 'normal! lmb'
    exe 'normal! f'.a:back
    exe 'normal! a'.a:toInsert
    exe 'normal! F'.a:front
    exe 'normal! i'.a:toInsert
    exe 'normal! `b'
endfunction

function! ReplaceBracket(open,close, openR, closeR)
    exe 'normal! mb'
    exe 'normal! F'.a:open
    exe 'normal! hxx'
    exe 'normal! i'.a:openR.a:openR
    exe 'normal! f'.a:close
    exe 'normal! xx'
    exe 'normal! i'.a:closeR.a:closeR
    exe 'normal! `b'
endfunction

function! ReplaceBracketToDouble(open,close, openR, closeR)
    exe 'normal! mb'
    exe 'normal! F'.a:open
    exe 'normal! x'
    exe 'normal! i'.a:openR.a:openR
    exe 'normal! f'.a:close
    exe 'normal! x'
    exe 'normal! i'.a:closeR.a:closeR
    exe 'normal! `bl'
endfunction

function! ReplaceBracketToSingle(open,close, openR, closeR)
    exe 'normal! mb'
    exe 'normal! F'.a:open
    exe 'normal! hxx'
    exe 'normal! i'.a:openR
    exe 'normal! f'.a:close
    exe 'normal! xx'
    exe 'normal! i'.a:closeR
    exe 'normal! `bh'
endfunction


function! InsertQuoteVisualMode(type)
    let sym=1

    if a:type == 'single'
        let quote="'"
        "if matches echo .* L=echo R=last non space
    elseif a:type == 'double'
        let quote='"'
    elseif a:type == 'back'
        let quote='`'
    elseif a:type == 'bracket'
        let quoteL='['
        let quoteR=']'
        let sym=0
    elseif a:type == 'curlybracket'
        let quoteL='{'
        let quoteR='}'
        let sym=0
    elseif a:type == 'paren'
        let quoteL='('
        let quoteR=')'
        let sym=0
    endif

    if sym == 1
        exe 'normal! `<'
        let lineNumR=line('.')
        exe 'normal! i'.quote
        exe 'normal! `>'
        let lineNumL=line('.')

        if lineNumL == lineNumR
            exe 'normal! la'.quote
            exe 'normal! gv'
            exe 'normal! ll'
        else
            exe 'normal! a'.quote
            exe 'normal! gv'
            exe 'normal! l'
        endif
    else
        exe 'normal! `<'
        let lineNumR=line('.')
        exe 'normal! i'.quoteL
        exe 'normal! `>'
        let lineNumL=line('.')
        if lineNumL == lineNumR
            exe 'normal! la'.quoteR
            exe 'normal! gv'
            exe 'normal! ll'
        else
            exe 'normal! a'.quoteR
            exe 'normal! gv'
            exe 'normal! l'
        endif
    endif
endfunction

let g:COUNTER=0

function! Quoter(type)
    let line=getline('.')
    let wordCursor=expand("<cword>")
    let charCursor=nr2char(strgetchar(getline('.')[col('.') - 1:], 0))

    let colIndex=col('.')

    echohl ErrorMsg

    if a:type == 'single'
        let quote="'"
        "if matches echo .* L=echo R=last non space
    elseif a:type == 'double'
        let quote='"'
    elseif a:type == 'back'
        let quote='`'
    endif

    if a:type == 'bracket'
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
            call ReplaceBracket('[',']', '(',')')
            echo 'Replace [[]] with (())'
        elseif (lineToPunct=~ '\v.*\)\).*')
            call ReplaceBracketToSingle('(',')','[',']')
            echo 'Replace (()) with []'
        else
            call ReplaceBracketToDouble('[',']','[',']')
            echo 'Replace [] with [[]]'
        endif
        let g:COUNTER=g:COUNTER +1
        return 0
    endif
    "if line matches regex and cursor position within matching capture group
    "then run the quoting

    if (line =~ '\v^.*\$\(.*\).*$')
        call InsertMatchingPunct(quote, '$')
        echo '$(command substitution)'
    elseif (line =~ '\v^.*\$\{.*\}.*$')
        call InsertMatchingPunct(quote, '$')
        echo '${parameter substitution}'
    elseif (line =~'\v\s*\S+\=\S+\s*$')
        call InsertEquals(quote, '=', '')
        echo 'var=value'
    elseif (line =~ '\v.*`.*`.*')
        call InsertBackTick(quote, '`', '`')
        echo '`command substitution`'
    elseif (line =~ '\v.*\$(\S|\$|\!|\?|\/|\.|\"|`|\'')+\).*')
        call InsertVarPunct(quote, '$', ')')
        echo '$var)'
    elseif (line =~ '\v.*\$(\S|\$|\!|\?|\/|\.|\"|`|\'')+\].*')
        call InsertVarPunct(quote, '$', ']')
        echo '$var]'
    elseif (line =~ '\v.*\$(\S|\$|\!|\?|\/|\.|\"|`|\'')+\s.*')
        call InsertVar(quote, '$', '/\s')
        echo '$var '
    elseif (line =~ '\v.*\$(\S|\$|\!|\?|\/|\.|\"|\`|\'')+$')
        call InsertEOLVar(quote, '$', '')
        echo '$varEOL'
    else
        echo 'Unknown Quoting Option:'.line
    endif

    echohl None

endfunction

"}}}***********************************************************

"{{{                    MARK:Blacklists for indentation
"**************************************************************
let blacklist=['md', 'zsh','sh','hs', 'pl']

augroup indentGroup
    autocmd!

    let currentFileEnding=tolower(expand('%:e'))
    "if the filetype is not in blacklist (index = -1) then we will indent
    if index(blacklist, currentFileEnding) < 0
        let filename=expand('%:p:t')
        if filename != '.zshrc'
            "autocmd CursorHoldI * :call Indent()
        endif
    endif
augroup end

"}}}***********************************************************

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

"{{{                    MARK:Plugin Mappings
"**************************************************************
"quickfix window
"conflicts with nerd commenter
augroup cwindow_group
    autocmd!
    autocmd VimEnter * nnoremap <silent> <leader>cn :cnext<CR>
    autocmd VimEnter * nnoremap <silent> <leader>cp :cprev<CR>
    autocmd VimEnter * nnoremap <silent> <leader>cc :cclose<CR>
    autocmd VimEnter * nnoremap <silent> <leader>co :copen<CR>
augroup end

"location list window
nnoremap <silent> <leader>ln :lnext<CR>
nnoremap <silent> <leader>lp :lprev<CR>
nnoremap <silent> <leader>lc :lclose<CR>
nnoremap <silent> <leader>lo :lopen<CR>

"args
nnoremap <silent> <leader>an :next<CR>
nnoremap <silent> <leader>ap :prev<CR>

"buffers
nnoremap <silent> <leader>n :bnext<CR>
nnoremap <silent> <leader>p :bprev<CR>

inoremap <F8> <ESC>:%s@@@g<Left><Left><Left>
nnoremap <F8> :%s@@@g<Left><Left><Left>
nnoremap <F1> :NERDTreeToggle<CR>
inoremap <F1> <ESC>:NERDTreeToggle<CR>
nnoremap <F2> :UndotreeToggle<CR>
inoremap <F2> <ESC>:UndotreeToggle<CR>
nnoremap <F3> :TlistAddFiles *<CR>:TlistToggle<CR>
inoremap <F3> <ESC>:TlistAddFiles *<CR>:TlistToggle<CR>
nnoremap <F4> :MinimapToggle<CR>
inoremap <F4> <ESC>:MinimapToggle<CR>
nnoremap <F5> :LOTRToggle<CR>
inoremap <F5> <ESC>:LOTRToggle<CR>
nnoremap <F6> :SyntasticToggleMode<CR>
inoremap <F6> <ESC>:SyntasticToggleMode<CR>

nnoremap <F7> :TTags<CR>
inoremap <F7> <ESC>:TTags<CR>

"keep subtitution flags
nnoremap & :&&<CR>
xnoremap & :&&<CR>

nnoremap <leader>x :normal mzg&`zzz<CR>
xnoremap <leader>x :normal mzg&`zzz<CR>

nnoremap && :normal mzg&`zzz<CR>
xnoremap && :normal mzg&`zzz<CR>

map <silent> <leader><leader>w <Plug>(easymotion-bd-w)
map <silent> <leader><leader>e <Plug>(easymotion-bd-e)
"map <silent> <leader><leader>b <Plug>(easymotion-bd-b)
noremap <silent> <leader>z nea

"for moving selection up and down, displacing other text
vnoremap <C-Right> >gv
vnoremap <C-Left> <gv

vnoremap <C-Down> :m '> + <CR> gv
vnoremap <C-Up> :m '< -- <CR> gv

map  <expr> ; repmo#LastKey('<Plug>Sneak_;')|sunmap ;
map  <expr> , repmo#LastRevKey('<Plug>Sneak_,')|sunmap ,

map  <expr> s repmo#ZapKey('<Plug>Sneak_s')|ounmap s|sunmap s
omap <expr> z repmo#ZapKey('<Plug>Sneak_s')
omap <expr> Z repmo#ZapKey('<Plug>Sneak_S')
map  <expr> f repmo#ZapKey('<Plug>Sneak_f')|sunmap f
map  <expr> F repmo#ZapKey('<Plug>Sneak_F')|sunmap F
map  <expr> t repmo#ZapKey('<Plug>Sneak_t')|sunmap t
map  <expr> T repmo#ZapKey('<Plug>Sneak_T')|sunmap T

"nmap  <expr> mn repmo#zapkey('<plug>bookmarknext')
"nmap  <expr> mp repmo#zapkey('<plug>bookmarkprev')
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b

"map <expr> w repmo#ZapKey('<Plug>CamelCaseMotion_w')
"map <expr> b repmo#ZapKey('<Plug>CamelCaseMotion_b')
noremap <expr> E repmo#SelfKey('E', 'gE')|sunmap E
noremap <expr> gE repmo#SelfKey('gE', 'E')|sunmap gE
noremap <expr> W repmo#SelfKey('w', 'b')|sunmap w
noremap <expr> B repmo#SelfKey('b', 'w')|sunmap b
noremap <expr> e repmo#SelfKey('e', 'ge')|sunmap e
noremap <expr> ge repmo#SelfKey('ge', 'e')|sunmap ge
noremap <expr> + repmo#SelfKey('+', '-')|sunmap +
noremap <expr> - repmo#SelfKey('-', '+')|sunmap -
noremap <expr> { repmo#SelfKey('{', '}')|sunmap {
noremap <expr> } repmo#SelfKey('}', '{')|sunmap }
noremap <expr> ( repmo#SelfKey('(', ')')|sunmap (
noremap <expr> ) repmo#SelfKey(')', '(')|sunmap )

noremap <expr> [[ repmo#SelfKey('[[', ']]')|sunmap [[
noremap <expr> ]] repmo#SelfKey(']]', '[[')|sunmap ]]

noremap <expr> ]m repmo#SelfKey(']m', '[m')|sunmap ]m
noremap <expr> [m repmo#SelfKey('[m', ']m')|sunmap [m

noremap <expr> j repmo#SelfKey('j', 'k')|sunmap j
noremap <expr> k repmo#SelfKey('k', 'j')|sunmap k
noremap <expr> h repmo#SelfKey('h', 'l')|sunmap h
noremap <expr> l repmo#SelfKey('l', 'h')|sunmap l

map <expr> j repmo#Key('gj', 'gk')|sunmap j
map <expr> k repmo#Key('gk', 'gj')|sunmap k

" similar to complete current statement in many IDEs
" where the keybinding moves caret to next line adding semicolon as needed to complete the statement
function! CompleteStatement()
    let SemiColon=['java','pl','c','h', 'hpp', 'cpp','js', 'rs']
    let doubleSemiColon=['ml']
    let exeFileType=expand('%:e')
    let length=len(Strip(getline('.')))
    let lastchar = Strip(getline('.'))[length-1]
    exe 'normal! $'
    if index(SemiColon, exeFileType) >= 0
        if lastchar == '{' || lastchar == ';' || lastchar == '(' || lastchar == '['
            call feedkeys("\<CR>")
        else
            call feedkeys(";\<CR>")
        endif
    elseif index(doubleSemiColon, exeFileType) >= 0
        if lastchar != ';'
            call feedkeys(";;\<CR>")
        else
            call feedkeys("\<CR>")
        endif
    else
        call feedkeys("\<CR>")
    endif
endfunction

function! CompleteStatementNormal()
    let SemiColon=['java','pl','c','h', 'hpp', 'cpp','js', 'rs']
    let doubleSemiColon=['ml']
    let exeFileType=expand('%:e')
    let length=len(Strip(getline('.')))
    let lastchar = Strip(getline('.'))[length-1]
    exe "normal! $"

    if index(SemiColon, exeFileType) >= 0
        if lastchar == '{' || lastchar == ';' || lastchar == '(' || lastchar == '['
            call feedkeys('o')
        else
            call feedkeys("A;\<CR>")
        endif
    elseif index(doubleSemiColon, exeFileType) >= 0
        if lastchar != ';'
            call feedkeys("A;;\<CR>")
        else
            call feedkeys('o')
        endif
    else
        call feedkeys('o')
    endif
endfunction

inoremap <C-\> <ESC>+
nnoremap <C-\> +

augroup complete_group
    autocmd!
    autocmd VimEnter * inoremap <silent> <C-Space> <C-o>:call CompleteStatement()<CR>
    autocmd VimEnter * nnoremap <silent> <NUL> :call CompleteStatementNormal()<CR>
augroup end

"}}}***********************************************************

"{{{                    MARK:Remaps
"**************************************************************
set pastetoggle=<F9>

function! TmuxRun(...)
    let str = join(a:000, ' ')
    echom str
    if has('gui_running')
        silent! exec "!tmux send-keys -t vimmers:0. C-c '".str."' C-m"
    else
        silent! exec "!tmux send-keys -t right C-c '".str."' C-m"
    endif
endfunction

command! -bang -nargs=* TRun call TmuxRun(<q-args>)

" Execute the current file in tmux pane to right when type=file
" Execute the visual selection in tmux pane to right when type=visual
" Send the visual selection REPL in tmux pane to right when type=repl
function! TmuxRepeat(type)
    let supportedTypes=['sh','zsh', 'cr','py','rb','pl', 'clj', 'tcl', 'vim', 'lisp', 'hs', 'ml', 'coffee', 'swift', 'lua', 'java', 'f90']
    let exeFileType=expand('%:e')
    let $VIMHOME = $HOME.'/.vim'

    "non empty when tmux server is running
    let tmux=$TMUX
    let a_save = ""

    if !empty(tmux) || has('gui_running')
        if a:type == 'visual' || a:type == 'repl'
            silent !mkdir $VIMHOME/.temp > /dev/null 2>&1
            let fileName=$ZPWR_HIDDEN_DIR_TEMP."/.vimTempFile.".exeFileType
            try
                let a_save = @a
                silent! normal! gv"ay
                call writefile(split(@a, "\n"), fileName)
            finally
                let @a = a_save
                if a:type == 'repl'
                    silent! exec '!tmux load-buffer -b buffer0099 '.fileName
                endif
            endtry
        else
            let fileName=fnameescape(expand('%:p'))
        endif

        let pane_count=Strip(system('tmux list-panes | wc -l'))
        if pane_count > 1 || has('gui_running')
            if has('gui_running')
                let output =  system('tmux list-sessions | command grep vimmers')
                if v:shell_error != 0
                    echom 'No Vimmers tmux session!'
                    return 0
                endif
                if a:type == 'repl'
                    silent! exec '!tmux paste-buffer -b buffer0099 -t vimmers:0. '
                    redraw!
                    return 0
                endif

                if index(supportedTypes, exeFileType) >= 0
                    silent! exec "!tmux send-keys -t vimmers:0. C-c ' bash \"$ZPWR_SCRIPTS/runner.sh\"' ' \"' ".fileName." '\"' C-m"
                    redraw!
                else
                    silent! exec '!tmux send-keys -t vimmer:1. C-c up C-m'
                    echom "Unknown Filetype '".exeFileType. "'. Falling Back to Prev Command!"
                    redraw!
                endif
            else
                if a:type == "repl"
                    silent! exec '!tmux paste-buffer -b buffer0099 -t right'
                    redraw!
                    return 0
                endif
                if index(supportedTypes, exeFileType) >= 0
                    silent! exec "!tmux send-keys -t right C-c ' bash \"$ZPWR_SCRIPTS/runner.sh\"' ' \"' ".fileName." '\"' C-m"
                    redraw!
                else
                    silent! exec '!tmux send-keys -t right C-c up C-m'
                    echom "Unknown Filetype '".exeFileType. "'. Falling Back to Prev Command!"
                    redraw!
                endif
            endif
            exe "normal! zz"
        else
            echom 'No tmux panes to right '.pane_count.'... use v C-V for visual block'
        endif
    else
        echom 'Not in tmux... use v C-V for visual block'
    endif

endfunction

function! TmuxRepeatGeneric()
    silent! exec "!tmux send-keys -t right C-c ' clear' C-m up up C-m"
    redraw!
    exe 'normal! zz'
endfunction

autocmd VimEnter * inoremap <silent> <C-V> <ESC>:w!<CR>:call TmuxRepeat("file")<CR>a
"reassign readline plugin mapping
autocmd VimEnter * nunmap S

function! GetFirstCodeLineHash()
        " read current file
        let l:file = readfile(expand('%:p'))
        let l:lineCounter = 0
        for l:line in l:file
            let l:match = matchstr(l:line, '^\s*#.*')
            let l:lineCounter = l:lineCounter + 1
            if(empty(l:match))
                break
            endif
        endfor
        "echom 'first non comment line'.l:lineCounter
        return l:lineCounter -1
endfunction

function! s:getVisualSelection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction

function! s:commonEV(lang, regex, name, wordUnderCursor)
    let l:line=GetFirstCodeLineHash()
    exe "normal mz"
    exe '%sno@'.a:regex.'@$'.a:name.'@g'
    if match(a:wordUnderCursor, '"') >= 0 || match(a:wordUnderCursor, "'") >= 0
        if a:lang == 'sh'
            exe 'normal! '.(l:line+1).'GO'.a:name.'='.a:wordUnderCursor
        elseif a:lang == 'pl'
            exe 'normal! '.(l:line+1).'GOmy $'.a:name.'='.a:wordUnderCursor.';'

        endif
    else
        if a:lang == 'sh'
            exe 'normal! '.(l:line+1).'GO'.a:name.'="'.a:wordUnderCursor.'"'
        elseif a:lang == 'pl'
            exe 'normal! '.(l:line+1).'GOmy $'.a:name.'="'.a:wordUnderCursor.'";'
        endif
    endif
    exe "normal! V\<Esc>"
    exe 'normal! `z'
endfunction

function! ExtractVariableVisual() range
    let l:wordUnderCursor = s:getVisualSelection()
    let l:name = inputdialog('Extract variable to replace visual __'.wordUnderCursor.'__:')

    if l:name== ''
       return 1
    endif

    let l:supportedTypes=['sh','zsh', 'pl', 'py']
    let l:exeFileType=expand('%:e')
    let l:regex=escape(l:wordUnderCursor, '/\')
    "echom '%sno@'.l:regex.'@$'.l:name."@g"
    let l:filename=expand('%:t')
    if l:filename == '.zshrc'
        let l:exeFileType = 'zsh'
    endif

    exe 'normal! `<'
    if l:exeFileType == 'sh' || l:exeFileType == 'zsh'
        call s:commonEV('sh', l:regex, l:name, l:wordUnderCursor)
    elseif l:exeFileType == 'pl'
        call s:commonEV('pl', l:regex, l:name, l:wordUnderCursor)
    elseif l:exeFileType == 'py'
        let l:line=GetFirstCodeLineHash()
        exe 'normal! mz'
        exe '%sno@'.l:regex.'@'.l:name.'@g'
        exe 'normal! '.(l:line+1).'GO'.l:name.'='.l:wordUnderCursor
        exe 'normal! `z'

    elseif index(supportedTypes, l:exeFileType) < 0
        echom " => Unknown Filetype '".l:exeFileType. "'."
        if l:exeFileType == ''
            echom " => Unknown Filetype for file '".l:filename. "'."
        else
            echom " => Unknown Filetype '".l:exeFileType. "'."
        endif
    endif
endfunction

function! s:commonFold(char)

let l:start = a:char.'{{{                    MARK:'
let l:sec   = a:char. '**************************************************************'
let l:end   = a:char. '}}}***********************************************************'

    exe 'normal! `<'
    exe 'normal! O'
    exe 'normal! jO'.l:start
    exe 'normal! mz'
    exe 'normal! o'.l:sec
    exe 'normal! `>'
    exe 'normal! o'
    exe 'normal! ko'.l:end
    exe 'normal! `zzz'
    call feedkeys('a')
endfunction

let s:fileTypeToComment = {
            \ 'java': '//',
            \ 'c': '//',
            \ 'js': '//',
            \ 'cpp': '//',
            \ 'sh': '#',
            \ 'zsh': '#',
            \ 'py': '#',
            \ 'pl': '#',
            \ 'rb': '#',
            \ 'lisp': ';;',
            \ 'vim': '"'
            \  }

function! ExtractFoldMarker() range
    let l:wordUnderCursor = s:getVisualSelection()

    let l:old=&formatoptions
    set formatoptions-=o

    let l:supportedTypes=['sh','zsh', 'pl', 'py', 'rb']
    let l:exeFileType=expand('%:e')

    let l:filename=expand('%:t')
    if l:filename == '.vimrc'
        let l:exeFileType = 'vim'
    endif
    if l:filename == '.spacemacs'
        let l:exeFileType = 'lisp'
    endif
    if l:filename == '.zshrc'
        let l:exeFileType = 'zsh'
    endif


    if has_key(s:fileTypeToComment, l:exeFileType)
        call s:commonFold(s:fileTypeToComment[l:exeFileType])

    elseif index(supportedTypes, l:exeFileType) < 0
        echom " => Unknown Filetype '".l:exeFileType. "'."
        if l:exeFileType == ''
            echom " => Unknown Filetype for file '".l:filename. "'."
        else
            echom " => Unknown Filetype '".l:exeFileType. "'."
        endif
    endif

   let &formatoptions=l:old
endfunction

function! ExtractVariable()
    let l:wordUnderCursor = expand("<cword>")
    let l:name = inputdialog('Extract variable to replace __'.wordUnderCursor.'__:')

    if l:name== ''
       return 1
    endif

    let l:supportedTypes=['sh','zsh', 'pl', 'py']
    let l:exeFileType=expand('%:e')
    let l:regex=fnameescape(l:wordUnderCursor)
    "echom '%s@\<'.l:regex.'\>@$'.l:name."@g"
    let l:filename=expand('%:t')
    if l:filename == '.zshrc'
        let l:exeFileType = 'zsh'
    endif

    if l:exeFileType == 'sh' || l:exeFileType == 'zsh'
        let l:line=GetFirstCodeLineHash()
        exe 'normal mz'
        exe '%s@\<'.l:regex.'\>@$'.l:name.'@g'
        exe 'normal! '.(l:line+1).'GO'.l:name.'='.l:wordUnderCursor
        exe "normal! V\<Esc>"
        exe 'normal! `z'

    elseif l:exeFileType == 'pl'
        let l:line=GetFirstCodeLineHash()
        exe 'normal mz'
        exe '%s@\<'.l:regex.'\>@$'.l:name.'@g'
        exe 'normal! '.(l:line+1).'GOmy $'.l:name.'='.l:wordUnderCursor.';'
        exe "normal! V\<Esc>"
        exe 'normal! `zzz'

    elseif l:exeFileType == 'py'
        let l:line=GetFirstCodeLineHash()
        exe 'normal mz'
        exe '%s@\<'.l:regex.'\>@'.l:name.'@g'
        exe 'normal! '.(l:line+1).'GO'.l:name.'='.l:wordUnderCursor
        exe 'normal! `z'

    elseif index(supportedTypes, l:exeFileType) < 0
        if l:exeFileType == ''
            echom " => Unknown Filetype for file '".l:filename. "'."
        else
            echom " => Unknown Filetype '".l:exeFileType. "'."
        endif
    endif


endfunction

function! ExtractMethod() range
    let l:supportedTypes=['sh','zsh', 'pl', 'py']
    let l:name = inputdialog('Extract method:')
    if l:name== ''
       return 1
    endif

    let l:exeFileType=expand('%:e')
    let l:filename=expand('%:t')
    if l:filename == '.zshrc'
        let l:exeFileType = 'zsh'
    endif


    if l:exeFileType == 'sh' || l:exeFileType == 'zsh'
        let l:line=GetFirstCodeLineHash()
        '>
        exe 'normal! o'.l:name
        mark z
        silent! exe a:firstline.','.a:lastline.'move'.l:line

        '<
        exe 'normal! Ofunction ' . l:name ."(){\<Esc>"
        '>
        exe "normal! o}\<CR>\<Esc>k"
        exe "normal! vi{=va{V\<Esc>"
        exe 'normal! `z$zz'
    elseif l:exeFileType == 'pl'
        let l:line=GetFirstCodeLineHash()
        '>
        exe 'normal! o'.l:name.'();'
        mark z
        silent! exe a:firstline.','.a:lastline.'move'.l:line

        '<
        exe 'normal! Osub ' . l:name ."(){\<Esc>"
        '>
        exe "normal! o}\<CR>\<Esc>k"
        exe "normal! vi{=va{V\<Esc>"
        exe 'normal! `z$zz'

    elseif l:exeFileType == 'py'
        '<
        exe 'normal! Odef ' . l:name ."():\<Esc>"
        '>
        exe "normal! o\<Esc>vi{>\<Esc>"
        exe 'normal! o'.l:name. ''
    elseif index(supportedTypes, l:exeFileType) < 0
        if l:exeFileType == ''
            echom " => Unknown Filetype for file '".l:filename. "'."
        else
            echom " => Unknown Filetype '".l:exeFileType. "'."
        endif
    endif
endfunction

xmap <leader>em :call ExtractMethod()<CR>
nmap <leader>ev :call ExtractVariable()<CR>
xmap <leader>ev :call ExtractVariableVisual()<CR>
xmap <leader>ef :call ExtractFoldMarker()<CR>

let shouldMapV = $ZPWR_MAP_C_V_VIM_NORMAL
if shouldMapV == 'true'
    " exec file from scratch
    nnoremap <silent> <C-v> :w!<CR>:call TmuxRepeat("file")<CR>
endif
" exec file from scratch
nnoremap <silent> <leader>vj :w!<CR>:call TmuxRepeat("file")<CR>

vnoremap <silent> <leader>vj <ESC>:call TmuxRepeat("file")<CR>gv
" exec visual selection from scratch
vnoremap <silent> <leader>vk <ESC>:call TmuxRepeat("visual")<CR>gv
" exec visual selection by pasting into REPL
vnoremap <silent> <leader>vl <ESC>:call TmuxRepeat("repl")<CR>gv

"vnoremap <silent> y y`>
"nnoremap <silent> gp p`]
vnoremap Y y`>j
nnoremap Y yy`>

" trim leading and trailing whitespace
function! Strip(input_string)
    return substitute(a:input_string, '^\s*\(.\{-}\)\s*$', '\1', '')
endfunction

" copy current file:lineno line to system clipboard
function! GetRef()
    let mystr = Strip(getline('.'))
    echom 'Copied ' . mystr
    let @* = expand('%:p').': '.line('.').' '.mystr
endfunction

"}}}***********************************************************

"{{{                    MARK:C-D mappings
"**************************************************************
vnoremap <silent> <C-D>, :call NERDComment("x","Toggle")<CR>`>
"nnoremap <silent> <C-D>, :call NERDComment("x","Toggle")<CR>`>

vnoremap <silent> <C-D>y :<C-C>:update<CR>:SyntasticCheck<CR>
vnoremap <silent> <C-D>d :<C-C>:update<CR>

"insert mode keybindings for fzf-vim
inoremap <silent> <C-D><C-D> <C-O>:GitGutterUndoHunk<CR>

inoremap <silent> <C-D>a <C-O>:Ag<CR>
inoremap <silent> <C-D>b <C-O>:Buffers<CR>
inoremap <silent> <C-D>c <C-O>:Colors<CR>
inoremap <silent> <C-D>d <C-O>:Commands<CR>
inoremap <silent> <C-D>e <C-O>:ALEInfo<CR>
inoremap <silent> <C-D>f <C-O>:Files<CR>
inoremap <silent> <C-D>g <C-O>:Commits!<CR>
inoremap <silent> <C-D>h <C-O>:HistoryFiles<CR>
inoremap <silent> <C-D>i <C-O>:Imap<CR>
inoremap <silent> <C-D>j <C-O>:Agg<CR>
inoremap <silent> <C-D>k <C-O>:ALEFix<CR>
inoremap <silent> <C-D>l <C-O>:Lines<CR>
inoremap <silent> <C-D>m <C-O>:Map<CR>
"inoremap <silent> <C-D>n <C-O>:Snippets<CR>
inoremap <silent> <C-D>o <C-O>:ALEToggle<CR>
inoremap <silent> <C-D>p <C-O>:call GetRef()<CR>
inoremap <silent> <C-D>q <C-O>:SaveSession!<CR><TAB>
inoremap <silent> <C-D>rq <Esc>:silent !open -t %:p:h<CR>:redraw!<CR>a
inoremap <silent> <C-D>rr <Esc>:Rg<CR>
inoremap <silent> <C-D>s <C-O>:History/<CR>
inoremap <silent> <C-D>t <C-O>:Tags<CR>
inoremap <silent> <C-D>] <C-W>}<CR>
inoremap <silent> <C-D>u <C-O>:History:<CR>
inoremap <silent> <C-D>v <C-[>:w!<CR>:call TmuxRepeatGeneric()<CR>a
inoremap <silent> <C-D>w <C-O>:update<CR>
inoremap <silent> <C-D>x <C-O>:Marks<CR>
inoremap <silent> <C-D>y <C-[>:update<CR>:SyntasticCheck<CR>a
inoremap <silent> <C-D>z <ESC>:TlistAddFiles * <CR> :TlistToggle<CR>i
inoremap <silent> <C-D>/ <C-O>:LocateAll<CR>
inoremap <silent> <C-D>. <C-O>:FZFKeys<CR>
inoremap <silent> <C-D>, <C-O>:FZFEnv<CR>
inoremap <silent> <C-D>\ <C-X><C-L>
inoremap <silent> <C-D>n <C-X><C-O>

"normal mode keybindings for fzf-vim
nnoremap <silent> <C-D><C-D> :GitGutterUndoHunk<CR>

nnoremap <silent> <C-D>a :Ag<CR>
nnoremap <silent> <leader>ag :Ag<CR>
nnoremap <silent> <C-D>b :Buffers<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <C-D>c :Colors<CR>
nnoremap <silent> <leader>. :Colors<CR>
nnoremap <silent> <C-D>d :Commands<CR>
nnoremap <silent> <C-D>e :ALEInfo<CR>
nnoremap <silent> <leader>env :FZFEnv<CR>
nnoremap <silent> <C-D>f :Files<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <C-D>g :Commits!<CR>
nnoremap <silent> <C-D>h :HistoryFiles<CR>
nnoremap <silent> <C-D>i :Imap<CR>
nnoremap <silent> <C-D>j :Agg<CR>
nnoremap <silent> <leader>aa :Agg<CR>
nnoremap <silent> <C-D>k :ALEFix<CR>
nnoremap <silent> <leader>, :FZFMaps<CR>
nnoremap <silent> <leader>ke :FZFKeys<CR>
nnoremap <silent> <C-D>l :Lines<CR>
nnoremap <silent> <C-D>m :Map<CR>
nnoremap <silent> <leader>m :Map<CR>
nnoremap <silent> <C-D>n :Snippets<CR>
nnoremap <silent> <C-D>o :ALEToggle<CR>
nnoremap <silent> <leader>o :ALEToggle<CR>
nnoremap <silent> <C-D>p :call GetRef()<CR>
nnoremap <silent> <C-D>q :SaveSession!<CR><TAB>
nnoremap <silent> <C-D>rq :silent !open -t %:p:h<CR>:redraw!<CR>
nnoremap <silent> <C-D>rr :Rg<CR>
nnoremap <silent> <leader>rg :Rg<CR>
nnoremap <silent> <C-D>s :History/<CR>
nnoremap <silent> <leader>hh :History<CR>
nnoremap <silent> <leader>h/ :History/<CR>
nnoremap <silent> <leader>h: :History:<CR>
nnoremap <silent> <C-D>t :Tags<CR>
nnoremap <silent> <C-D>] <C-W>}<CR>
nnoremap <silent> <leader>] <C-W>}<CR>
nnoremap <silent> <leader>ta :Tags<CR>
nnoremap <silent> <C-D>u :History:<CR>
nnoremap <silent> <C-D>v :w!<CR>:call TmuxRepeatGeneric()<CR>
nnoremap <silent> <C-D>w :update<CR>
nnoremap <silent> <C-D>x :Marks<CR>
nnoremap <silent> <C-D>y :update<CR>:SyntasticCheck<CR>
nnoremap <silent> <C-D>z :TlistAddFiles *<CR>:TlistToggle<CR>
nnoremap <silent> <C-D>/ :LocateAll<CR>
nnoremap <silent> <leader>/ :LocateAll<CR>
nnoremap <silent> <C-D>. :FZFKeys<CR>
nnoremap <silent> <C-D>, :FZFEnv<CR>

"similar to tmux <prefix> - and <prefix> | to split panes
nnoremap <silent> <C-W>- :split<CR>
nnoremap <silent> <C-W>\ :vsplit<CR>


nmap [[ ?{<CR>w99[{
nmap ][ /}<CR>b99]}
nmap ]] j0[[%/{<CR>
nmap [] k$][%?}<CR>]}]]}]]

"}}}***********************************************************

"{{{                    MARK:autocmd
"**************************************************************

augroup misc_group
    autocmd!
    autocmd filetype * set tags+=~/tags
    autocmd filetype * call AutoCorrect()
    "uncomment following if you want just want autocorrection in text and markdown files
    "autocmd filetype text call AutoCorrect()
    "autocmd filetype markdown call AutoCorrect()

    autocmd BufReadPre,FileReadPre *.[chy] set cindent
    autocmd BufRead * setlocal foldmethod=marker
    "open folds on startup
    autocmd BufRead * normal zR
    autocmd FileType java let b:dispatch = 'javac %'
augroup end

"diffing colors
fun! SetDiffColors()
    highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
    highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
    highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
    highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun

augroup file_templates
    autocmd!
    autocmd FilterWritePre * call SetDiffColors()
    autocmd BufNewFile *.sh silent! exe '!templater.sh %:p' | e
    autocmd BufNewFile *.zsh silent! exe '!templater.sh %:p' | e
    autocmd BufNewFile *.rb silent! exe '!templater.sh %:p' | e
    autocmd BufNewFile *.py silent! exe '!templater.sh %:p' | e
    autocmd BufNewFile *.pl silent! exe '!templater.sh %:p' | e
augroup end

function! SetHLSIns()
"only for first bufenter, required to activate the highlight on hover
    if !exists('g:hl_activated')
        let g:hl_activated = 1
        call feedkeys("\<ESC>:set hls\<CR>Gi")
    endif
endfunction

autocmd BufNewFile * call SetHLSIns()

"}}}***********************************************************

"{{{                    MARK:Ending
"**************************************************************
"load all pathogen plugins
if filereadable(expand('~/.vim/autoload/pathogen.vim'))
    runtime! autoload/pathogen.vim
    if exists('g:loaded_pathogen')
        silent! execute pathogen#infect()
    endif
endif

syntax on
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim

"powerline-status pip package installs to different locations of different OS
let os = substitute(system('uname'), '\n', '', '')

if os == 'Darwin'
    "if has('python3')
    "command! -nargs=1 Py py3 <args>
    "set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.7/Python
    "set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.7
    "else
    "command! -nargs=1 Py py <args>
    "set pythondll=/usr/local/Frameworks/Python.framework/Versions/2.7/Python
    "set pythonhome=/usr/local/Frameworks/Python.framework/Versions/2.7
    "endif

    map <ESC>[1;5A <C-Up>
    map <ESC>[1;5B <C-Down>
    map <ESC>[1;5C <C-Right>
    map <ESC>[1;5D <C-Left>
elseif os == 'Linux'
    let distro = substitute(system('grep "^ID=" /etc/os-release | cut -d= -f2 | tr -d \"'), '\n', '', '')

    if distro == 'ubuntu'
        map <ESC>[A <C-Up>
        map <ESC>[B <C-Down>
        map <ESC>[C <C-Right>
        map <ESC>[D <C-Left>
    elseif distro == 'raspbian'
        map <ESC>[A <C-Up>
        map <ESC>[B <C-Down>
        map <ESC>[C <C-Right>
        map <ESC>[D <C-Left>
    elseif distro == 'opensuse'
        map <ESC>[1;5A <C-Up>
        map <ESC>[1;5B <C-Down>
        map <ESC>[1;5C <C-Right>
        map <ESC>[1;5D <C-Left>
    elseif distro == 'fedora'
        map <ESC>[A <C-Up>
        map <ESC>[B <C-Down>
        map <ESC>[C <C-Right>
        map <ESC>[D <C-Left>
    else
        "map <ESC>[A <C-Up>
        "map <ESC>[B <C-Down>
        "map <ESC>[C <C-Right>
        "map <ESC>[D <C-Left>
    endif

endif
if ! has('nvim')
    set runtimepath+=~/.tmux/powerline/bindings/vim/
endif

"gf and :find will find files automatically in these locations
set path+=~/Desktop
set path+=~/.zpwr/scripts

"default colorscheme
silent! colorscheme badwolf

"personal common mispellings
iabbrev tth the
iabbrev tehn then
iabbrev retrun return
iabbrev retunr return
iabbrev delte delete
iabbrev deltee delete

"dict completion normally invoked in insert mode with C-X C-K
set dictionary+=/usr/share/dict/words
"thesaurus completion normally invoked in insert mode with C-X C-T
set thesaurus+=~/mthesaur.txt

source ~/.oh-my-zsh/custom/plugins/fzf/plugin/fzf.vim

"easier mapping for dict completion
inoremap <silent> <F10> <C-X><C-K>
"easier mapping for thesaurus completion
inoremap <silent> <F11> <C-X><C-T>

"default keybindings
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

"default fzf location and size
let g:fzf_layout = { 'down': '~50%' }

"use vim colorscheme colors
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

let s:timer = -1

function! s:BalloonShow(...)
  let s:message =
          \ 'Cursor is at line ' . v:beval_lnum .
          \', column ' . v:beval_col .
          \ ' of file ' .  bufname(v:beval_bufnr) .
          \ ' on word "' . v:beval_text . '"'
  call c(s:message)
endfunction

function! MyBalloonExpr()
  call timer_stop( s:timer )
  let s:timer = timer_start(100, function('s:BalloonShow'))
  return ''
endfunction

set mouse=a
if ! has('nvim')
    set balloonexpr=MyBalloonExpr()
    set balloondelay=300
    set ttymouse=xterm2
    set ballooneval
    set balloonevalterm
endif

let g:ale_linters = {'perl': ['perl', 'perlcritic']}
let g:ale_perl_perlcritic_showrules = 1
let g:ale_set_balloons = 1
let g:ale_completion_enabled = 1
let g:ale_fixers = {'ruby': ['rubocop'], 'sh': ['shfmt'], 'perl': ['perltidy'], 'python': ['yapf']}

" less intrusive linting
let g:ale_lint_on_text_changed = 'always'
let g:ale_lint_delay = 1000

let g:ale_sign_error = '!✗'
let g:ale_sign_warning = '!⚠'

let g:ale_perl_perlcritic_options = '--brutal'

let g:snips_author='MenkeTechnologies'
let g:snips_email='jmenke@wccnet.edu'
let g:snips_github='MenkeTechnologies'

command! -bang Colors call fzf#vim#colors({'left': '20', 'options': '--reverse' }, <bang>0)

"give :Ag preview window with first line of matched file matches fzf input
command! -bang -nargs=* Agg call fzf#vim#ag(<q-args>, {'options': "--delimiter : --nth 4.. --preview 'bat --paging never --wrap character --color always --style=\"numbers,grid,changes,header\" $(cut -d: -f1 <<< {}) | sed -n $(cut -d: -f2 <<< {}),\\$p | head -".&lines."'", 'bottom': '50%'}, <bang>0)

command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>),
  \   1,
  \   fzf#vim#with_preview('right:50%'))

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..', 'bottom':'50%'}))
"command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#wrap("with_preview", {"options": '--delimiter : --nth 4.. --preview'}))

command! FZFMaps call fzf#run({
\  'source':  "cat ".$ZPWR_VIM_KEYBINDINGS,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})

command! FZFKeys call fzf#run({
\  'source':  "cat ".$ZPWR_ALL_KEYBINDINGS,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})

command! FZFEnv call fzf#run({
\  'source':  "cat ".$ZPWR_ENV."Key.txt | awk '{print $2}'",
\  'sink':    'e',
\  'options': $FZF_ENV_OPTS,
\  'down':    '40%'})

let fzfStrOrig="--preview 'file={}; file=$(echo $file | sed 's@~@".$HOME."@'); test -f $file && bat --paging never --wrap character --color always --style=\"numbers,grid,changes,header\" $file || stat $file'"

let fzfStrFinal=$FZF_CTRL_T_OPTS

function! FZFFuncsFun()
    redir => cout
    silent function
    redir END
    let list = split(cout, "\n")

    call fzf#run({'source': list})
endfunction

function! FZFVarsFun()
    redir => cout
    silent let
    redir END
    let list = split(cout, "\n")

    call fzf#run({'source': list})
endfunction

command! -bang -nargs=* FZFFuncs call FZFFuncsFun()
command! -bang -nargs=* FZFVars call FZFVarsFun()


"give :History preview window
command! -bang -nargs=* HistoryFiles call fzf#vim#history({'options': fzfStrFinal})

"give :Files preview window
command! -bang -nargs=* Files call fzf#vim#files('', fzf#wrap('files', {'options': fzfStrFinal}))

" complete all files on /
command! -bang -nargs=* LocateAll call fzf#vim#locate('/', {'options': fzfStrFinal})


" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
" visual
xmap <leader><tab> <plug>(fzf-maps-x)
" operating pending
omap <leader><tab> <plug>(fzf-maps-o)

" :Imap = shows all insert mode mappings
command! -bang -nargs=* Imaps call fzf#vim#maps('i')
command! -bang -nargs=* Nmaps call fzf#vim#maps('n')
command! -bang -nargs=* Omaps call fzf#vim#maps('o')
command! -bang -nargs=* Vmaps call fzf#vim#maps('v')
command! -bang -nargs=* Xmaps call fzf#vim#maps('x')
command! -bang -nargs=* Smaps call fzf#vim#maps('s')
command! -bang -nargs=* Cmaps call fzf#vim#maps('c')

" Insert mode completion
imap <c-d><c-f> <plug>(fzf-complete-path)
imap <c-d><c-j> <plug>(fzf-complete-file-ag)

" Open pane to left for dictionary completion
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
  \ 'prefix': '^.*$',
  \ 'source': 'rg -n ^ --color always',
  \ 'options': '--ansi --delimiter : --nth 3..',
  \ 'left': '60',
  \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline#extensions#tabline#enabled = 1

function! AppendToFile(file, lines)
    call writefile(a:lines, a:file, 'a')
endfunction

function! WriteToNVimInfo()
    let viminfo = $ZPWR_LOCAL.'/.nviminfo'
    let curFile = expand('%:p:~')
    if curFile != ''
        let curFile = '> '.curFile
        call AppendToFile(viminfo,[curFile])
    endif
endfunction

if has('nvim')
    augroup nvim_group
        autocmd!
        autocmd bufenter * call WriteToNVimInfo()
    augroup end
endif

"update the file with set autoread
augroup checktime_group
      autocmd!
    autocmd CursorHold,CursorHoldI * if !bufexists("[Command Line]") | checktime | endif
augroup end

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif

" enable vimtex completion options in YCM
silent! autocmd VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

"disable python2 for neovim
let g:loaded_python_provider = 0
let g:vimtex_compiler_progname = 'nvr'

" Highlight all instances of word under cursor, when idle.
" Type z/ to toggle highlighting on/off.
function! GoToLastSearch(char)
    call feedkeys(a:char."\<UP>\<CR>")
endfunction

nnoremap n :call GoToLastSearch('/')<CR>
nnoremap N :call GoToLastSearch('?')<CR>

nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    nunmap n
    nunmap N
    autocmd! auto_highlight
    augroup! auto_highlight
    echom 'Highlight current word: off'
    return 0
  else
    nnoremap n :call GoToLastSearch('/')<CR>
    nnoremap N :call GoToLastSearch('?')<CR>
    augroup auto_highlight
      autocmd!
      autocmd CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    set hlsearch
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

"highlight on hover activated automatically
augroup auto_highlight
    autocmd!
    autocmd CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
augroup end

augroup auto_set_hls
    autocmd!
    autocmd BufEnter * call SetHLS()
augroup end

function! SetHLS()
"only for first bufenter, required to activate the highlight on hover
    if !exists('g:hl_activated')
        let g:hl_activated = 1
        call feedkeys(":set hlsearch\<CR>")
        call feedkeys(":hi ColorColumn guibg=#557799  guifg=white    gui=none ctermbg=6 ctermfg=15\<CR>")
    endif
endfunction


let g:tmuxcomplete#asyncomplete_source_options = {
            \ 'name':      'tmuxcomplete',
            \ 'whitelist': ['*'],
            \ 'config': {
            \     'splitmode':      'words',
            \     'filter_prefix':   1,
            \     'show_incomplete': 1,
            \     'sort_candidates': 0,
            \     'scrollback':      0,
            \     'truncate':        0
            \     }
            \ }
let g:tmuxcomplete#trigger = 'omnifunc'

"}}}***********************************************************
 

"{{{                    mark:deoplete/neosnippets
"**************************************************************

"call deoplete#custom#set('ultisnips', 'matchers', ['matcher_fuzzy'])

function! SetDEO()
    call deoplete#enable()

    imap <expr><C-k> "\<Plug>(neosnippet_expand_or_jump)"
    xmap <expr><C-k> "\<Plug>(neosnippet_expand_or_jump)"

    imap <expr><TAB>
    \ pumvisible() ?
    \ ( neosnippet#expandable_or_jumpable() ?
    \    "\<Plug>(neosnippet_expand_or_jump)" : "\<C-n>") : "\<TAB>"

    vmap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)"
                \: "\>"

    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
                \ "\<Plug>(neosnippet_expand_or_jump)"
                \: "\<TAB>"

endfunction


"augroup setdeo
    "autocmd!
    "autocmd BufEnter * call SetDEO()
"augroup end

"if has('nvim')
    "exe 'normal :UpdateRemotePlugins'
"endif


"}}}***********************************************************
