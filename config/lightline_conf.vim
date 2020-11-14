let g:lightline = {
      \ 'colorscheme': 'forest_night',
      \ 'active': {
      \   'left': [[ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified', 'method' ] ],
      \   'right': [[ 'coc_warning' ],['percent']]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'Lightlinegit',
      \ },
      \ }

function! Lightlinegit()
  let l:branch = fugitive#head()
  return l:branch ==# '' ? '' : ' ' . l:branch
endfunction

function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif
  return ''
endfunction

let g:lightline.component_expand = {
            \ 'coc_warning': 'LspStatus'
            \ }

autocmd User LspDiagnosticsChanged call lightline#update()
