" Vim/Neovim configuration for perlrs
" Usage: source ~/.zpwr/install/perlrs.vim

" Register .pr files as perlrs filetype with perl syntax
augroup perlrs_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.pr set filetype=perlrs
  autocmd BufReadPost *.pr set filetype=perlrs
  autocmd FileType perlrs setlocal syntax=perl commentstring=#\ %s
augroup END

" ALE linter functions
function! PerlrsProjectRoot(buffer) abort
  let l:git = ale#path#FindNearestDirectory(a:buffer, '.git')
  return !empty(l:git) ? fnamemodify(l:git, ':h:h') : expand('#' . a:buffer . ':p:h')
endfunction

function! PerlrsHandler(buffer, lines) abort
  let l:output = []
  for l:line in a:lines
    let l:match = matchlist(l:line, '\v^(.+) at .+ line (\d+)')
    if !empty(l:match)
      call add(l:output, {'lnum': l:match[2] + 0, 'text': l:match[1], 'type': 'E'})
    endif
  endfor
  return l:output
endfunction

function! s:RegisterPerlrsALE() abort
  if exists('*ale#linter#Define')
    call ale#linter#Define('perlrs', {
    \   'name': 'perlrs',
    \   'executable': 'pe',
    \   'command': 'pe --lint %t 2>&1',
    \   'callback': 'PerlrsHandler',
    \   'project_root': function('PerlrsProjectRoot'),
    \})
    let g:ale_linters = get(g:, 'ale_linters', {})
    let g:ale_linters.perlrs = ['perlrs']
  endif
endfunction

autocmd VimEnter * call s:RegisterPerlrsALE()

" vim-lsp plugin
if exists('*lsp#register_server')
  call lsp#register_server({
  \   'name': 'perlrs',
  \   'cmd': ['pe', '--lsp'],
  \   'allowlist': ['perlrs', 'perl'],
  \})
endif

" coc.nvim: add to coc-settings.json:
" {
"   "languageserver": {
"     "perlrs": {
"       "command": "pe",
"       "args": ["--lsp"],
"       "filetypes": ["perlrs", "perl"]
"     }
"   }
" }
