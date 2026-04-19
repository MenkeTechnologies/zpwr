" Vim/Neovim configuration for forge
" Usage: source ~/.zpwr/install/forge.vim

" Register .for files as forge filetype with perl syntax
augroup forge_filetype
  autocmd!
  autocmd BufNewFile,BufRead *.for set filetype=forge
  autocmd BufReadPost *.for set filetype=forge
  autocmd FileType forge setlocal syntax=perl commentstring=#\ %s
augroup END

" ALE linter functions
function! ForgeProjectRoot(buffer) abort
  let l:git = ale#path#FindNearestDirectory(a:buffer, '.git')
  return !empty(l:git) ? fnamemodify(l:git, ':h:h') : expand('#' . a:buffer . ':p:h')
endfunction

function! ForgeHandler(buffer, lines) abort
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
    call ale#linter#Define('forge', {
    \   'name': 'forge',
    \   'executable': 'pe',
    \   'command': 'pe --lint %t 2>&1',
    \   'callback': 'ForgeHandler',
    \   'project_root': function('ForgeProjectRoot'),
    \})
    let g:ale_linters = get(g:, 'ale_linters', {})
    let g:ale_linters.forge = ['forge']
  endif
endfunction

autocmd VimEnter * call s:RegisterForgeALE()

" vim-lsp plugin
if exists('*lsp#register_server')
  call lsp#register_server({
  \   'name': 'forge',
  \   'cmd': ['pe', '--lsp'],
  \   'allowlist': ['forge', 'perl'],
  \})
endif

" coc.nvim: add to coc-settings.json:
" {
"   "languageserver": {
"     "forge": {
"       "command": "pe",
"       "args": ["--lsp"],
"       "filetypes": ["forge", "perl"]
"     }
"   }
" }
