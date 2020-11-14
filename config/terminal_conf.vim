augroup TerminalStuff
  autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no
augroup END

let g:term_buf = 0
let g:term_win = 0
function! Term_toggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction


let g:term_buf_htop = 0
let g:term_win_htop = 0
function! Term_toggle_htop(width_htop)
    if win_gotoid(g:term_win_htop)
        hide
    else
        vertical new
        exec "vertical resize " . a:width_htop
        try
            exec "buffer " . g:term_buf_htop
        catch
            call termopen('htop', {"detach": 0})
            let g:term_buf_htop = bufnr("")
        endtry
        startinsert!
        let g:term_win_htop = win_getid()
    endif
endfunction

let g:term_buf_gpustat = 0
let g:term_win_gpustat = 0
function! Term_toggle_gpustat(height_gpustat)
    if win_gotoid(g:term_win_gpustat)
        hide
    else
        new
        exec "resize " . a:height_gpustat
        try
            exec "buffer " . g:term_buf_gpustat
        catch
            call termopen('gpustat --no-header --show-power draw --gpuname-width 1 -i -c', {"detach": 0})
            let g:term_buf_gpustat = bufnr("")
        endtry
        startinsert!
        let g:term_win_gpustat = win_getid()
    endif
endfunction


let g:term_buf_vert = 0
let g:term_win_vert = 0
function! Term_toggle_vert(width)
    if win_gotoid(g:term_win_vert)
        hide
    else
        vertical new
        exec "vertical resize " . a:width
        try
            exec "buffer " . g:term_buf_vert
        catch
            call termopen('ipython', {"detach": 0})
            let g:term_buf_vert = bufnr("")
        endtry
        startinsert!
        let g:term_win_vert = win_getid()
    endif
endfunction
nnoremap <silent><F2> :call Term_toggle(17) <bar> :Bdelete nameless <cr>
tnoremap <silent><F2> <C-\><C-n>:call Term_toggle(17) <bar> :Bdelete nameless<cr>
nnoremap <silent><F3> :call Term_toggle(17) <bar> :call Term_toggle_htop(66) <bar> :call Term_toggle_gpustat(5) <bar> :Bdelete nameless<cr>
tnoremap <silent><F3> <C-\><C-n>:call Term_toggle(17) <bar> :call Term_toggle_htop(66) <bar> :call Term_toggle_gpustat(5) <bar> :Bdelete nameless<cr>

nnoremap <silent><space>t :call Term_toggle_vert(75) <bar> :Bdelete nameless <cr>
tnoremap <silent><space>t <C-\><C-n>:call Term_toggle_vert(80) <bar> :Bdelete nameless<cr>

tnoremap <C-o> <C-\><C-n>

command! Sterm :split <bar> term
command! Vterm :vsplit <bar> term
