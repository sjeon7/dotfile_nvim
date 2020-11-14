let g:neoformat_python_isort = {
            \ 'exe': 'isort',
            \ 'args': ['--float-to-top','-l 80','-m 3','--tc','--fgw','--up','-n','-'],
            \ 'stdin': 1,
            \ }
let g:neoformat_python_black = {
            \ 'exe': 'black',
            \ 'args': ['-l 80','-q', '-'],
            \ 'stdin': 1,
            \ }
let g:neoformat_enabled_python = ['black','isort']

nnoremap <space>b :Neoformat black<cr>
nnoremap <space>i :Neoformat isort<cr>
