let g:vista_stay_on_oepn = 0
let g:vista_default_executive = 'nvim_lsp'
let g:vista_executive_for = {
  \ 'python': 'nvim_lsp',
  \ 'vim': 'nvim_lsp',
  \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 30
let g:vista#renderer#icons = {
\    'func': "\uf794 ",
\    'function': "\uf794 ",
\    'functions': "\uf794 ",
\    'var': "\uf71b ",
\    'variable': "\uf71b ",
\    'variables': "\uf71b ",
\    'const': "\uf8ff ",
\    'constant': "\uf8ff ",
\    'method': "\uf6a6 ",
\    'package': "\ue612 ",
\    'packages': "\ue612 ",
\    'enum': "\uf702 ",
\    'enumerator': "\uf702 ",
\    'module': "\uf136 ",
\    'modules': "\uf136 ",
\    'type': "\uf7fd ",
\    'typedef': "\uf7fd ",
\    'types': "\uf7fd ",
\    'field': "\uf30b ",
\    'fields': "\uf30b ",
\    'macro': "\uf8a3 ",
\    'macros': "\uf8a3 ",
\    'map': "\ufb44 ",
\    'class': "\uf0e8 ",
\    'augroup': "\ufb44 ",
\    'struct': "\uf318 ",
\    'union': "\ufacd ",
\    'member': "\uf02b ",
\    'target': "\uf893 ",
\    'property': "\ufab6 ",
\    'interface': "\uf7fe ",
\    'namespace': "\uf475 ",
\    'subroutine': "\uf9af ",
\    'implementation': "\uf776 ",
\    'typeParameter': "\uf278 ",
\    'default': "\uf29c "
\}
autocmd BufEnter * if (winnr("$") == 1 && bufname("%")=="__vista__") | q | endif
