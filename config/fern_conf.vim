let g:fern#drawer_width = 30
let g:fern#default_hidden = 0
let g:fern#disable_drawer_auto_quit = 1
let g:fern#disable_default_mappings=1
let g:fern#disable_drawer_auto_restore_focus=0
let g:fern#renderer = "nerdfont"
let g:fern#renderer#nerdfont#leading  = "  "
let g:fern#renderer#nerdfont#padding = "  "

let g:fern_open = 0
function! ToggleFern()
    if g:fern_open
        exec "Fern . -drawer -toggle -reveal=%"
        let g:fern_open = 0
    else
        exec "Fern . -drawer -toggle -reveal=% | wincmd p"
        let g:fern_open = 1
    endif
endfunction
noremap <space>f :call ToggleFern() <cr>

function! s:init_fern() abort
    nmap <buffer> e <Plug>(fern-action-open)
    nmap <buffer> s <Plug>(fern-action-open:split)
    nmap <buffer> v <Plug>(fern-action-open:vsplit)
    nmap <buffer> t <Plug>(fern-action-open:tabedit)
    nmap <buffer> m <Plug>(fern-action-move)
    nmap <buffer> M <Plug>(fern-action-clipboard-move)
    nmap <buffer> c <Plug>(fern-action-copy)
    nmap <buffer> C <Plug>(fern-action-clipboard-copy)
    nmap <buffer> P <Plug>(fern-action-clipboard-paste)
    nmap <buffer> A <Plug>(fern-action-new-file)
    nmap <buffer> D <Plug>(fern-action-new-dir)
    nmap <buffer> r <Plug>(fern-action-rename)
    nmap <buffer> . <Plug>(fern-action-hidden-toggle)
    nmap <buffer> dd <Plug>(fern-action-remove)
    nmap <buffer> <BS> <Plug>(fern-action-leave)
    nmap <buffer> <CR> <Plug>(fern-action-enter)
    nmap <buffer> h <Plug>(fern-action-collapse)
    nmap <buffer> l <Plug>(fern-action-expand)
    nmap <buffer> R <Plug>(fern-action-reload:all)
    nmap <buffer> <leader> <Plug>(fern-action-mark)
endfunction

augroup FernGroup
  autocmd! *
  autocmd FileType fern call s:init_fern()
augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
augroup END

autocmd FileType fern set nonumber norelativenumber signcolumn=no

highlight link FernRootText Blue
highlight link FernBranchText Green
