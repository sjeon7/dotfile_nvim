nnoremap <silent><esc> :noh<return><esc>

function! ReloadTS()
    write
    edit
    TSBufEnable Highlight
endfunc

nnoremap <space>r :call ReloadTS()<CR>

" Syntax print
function! <SID>SynStack()
if !exists("*synstack")
return
endif
echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
echo synIDattr(synIDtrans(synID(line("."), col("."), 1)), "fg")

endfunc
" nnoremap <C-p> :call <SID>SynStack()<CR>

noremap <space>v :Vista!!<cr>
map <F10> :MinimapToggle<cr>

tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

noremap <silent> = :vertical resize +1<CR>
noremap <silent> - :vertical resize -1<CR>
noremap <silent> + :resize +1<CR>
noremap <silent> _ :resize -1<CR>
