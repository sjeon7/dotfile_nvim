let g:sneak#label = 1
let g:sneak#t_reset = 1
let g:sneak#f_reset = 1
let g:sneak#use_ic_scs = 1
let g:sneak#prompt = 'SNEAK> '
let g:sneak#target_labels = 'asdghklqweryuopzxcvbnmj'

map f <Plug>Sneak_s
map F <Plug>Sneak_S
map t <Plug>Sneak_t
map T <Plug>Sneak_T

hi link Sneak Search
hi link SneakScope Search
hi link SneakLabel Search
hi! link SneakLabelMask WarningMsg
