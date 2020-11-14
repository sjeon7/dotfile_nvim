let g:slime_target = "neovim"
let g:slime_no_mappings = 1
let g:slime_python_ipython = 1

xmap <c-c><c-c> <Plug>SlimeRegionSend
nmap <c-c><c-c> <Plug>SlimeParagraphSend
nmap <c-c>v   <Plug>SlimeConfig

nmap <leader><leader> <c-c><c-c>}j
