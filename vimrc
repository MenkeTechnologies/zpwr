set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'honza/vim-snippets'


let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:ycm_min_num_of_chars_for_completion = 1

let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_filetype_blacklist = { '*': 0}


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-j>"


call vundle#end()            " required
filetype plugin indent on    " required

:set number
syntax on
set autoindent
set showmatch
set showmode
set hlsearch
set ignorecase


imap jj <Esc>

nmap <c-j> 4j
nmap <c-k> 4k
nmap <c-h> 4h
nmap <c-l> 4l
noremap <silent> <C-D> :update<CR>
vnoremap <silent> <C-D> :<C-C>:update<CR>
inoremap <silent> <C-D> <C-[>:update<CR>a
noremap <silent> <C-C> :wq!<CR>
vnoremap <silent> <C-C> :<C-C>:wq!<CR>
inoremap <silent> <C-C> <C-[>:wq!<CR>


inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

execute pathogen#infect()
map <C-n> :NERDTreeToggle<CR>
set runtimepath^=~/.vim/bundle/ctrlp.vim

set pastetoggle=<C-F>

colorscheme 256-grayvim
set statusline+=%F
set statusline+=%=
set statusline+=Row:\%l
set statusline+=/
set statusline+=%L
set statusline+=\  
set statusline+=Col:\ %c

set laststatus=2
set wrapscan


set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim

set laststatus=2
set t_Co=256
set backspace=2

