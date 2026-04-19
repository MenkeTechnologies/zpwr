" Vim/Neovim configuration for stryke
" Usage: source ~/.zpwr/install/stryke.vim

" Register .stk files as stryke filetype with perl syntax
augroup forge_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.stk set filetype=stryke
  autocmd BufReadPost *.stk set filetype=stryke
  autocmd FileType stryke setlocal syntax=perl commentstring=#\ %s
augroup END

" ALE linter functions
function! StrykeProjectRoot(buffer) abort
  let l:git = ale#path#FindNearestDirectory(a:buffer, '.git')
  return !empty(l:git) ? fnamemodify(l:git, ':h:h') : expand('#' . a:buffer . ':p:h')
endfunction

function! StrykeHandler(buffer, lines) abort
  let l:output = []
  for l:line in a:lines
    let l:match = matchlist(l:line, '\v^(.+) at .+ line (\d+)')
    if !empty(l:match)
      call add(l:output, {'lnum': l:match[2] + 0, 'text': l:match[1], 'type': 'E'})
    endif
  endfor
  return l:output
endfunction

function! s:RegisterForgeALE() abort
  if exists('*ale#linter#Define')
    call ale#linter#Define('stryke', {
    \   'name': 'stryke',
    \   'executable': 'pe',
    \   'command': 'pe --lint %t 2>&1',
    \   'callback': 'StrykeHandler',
    \   'project_root': function('StrykeProjectRoot'),
    \})
    let g:ale_linters = get(g:, 'ale_linters', {})
    let g:ale_linters.stryke = ['stryke']
  endif
endfunction

autocmd VimEnter * call s:RegisterForgeALE()

" vim-lsp plugin
if exists('*lsp#register_server')
  call lsp#register_server({
  \   'name': 'stryke',
  \   'cmd': ['pe', '--lsp'],
  \   'allowlist': ['stryke', 'perl'],
  \})
endif

" coc.nvim: add to coc-settings.json:
" {
"   "languageserver": {
"     "stryke": {
"       "command": "pe",
"       "args": ["--lsp"],
"       "filetypes": ["stryke", "perl"]
"     }
"   }
" }
