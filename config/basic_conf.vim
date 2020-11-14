set nu
set relativenumber
set mouse=a
syntax on
set clipboard=unnamedplus
set ignorecase
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4 
set colorcolumn=81

set undofile
set undodir=~/.vim/undo

set splitbelow
set splitright
set noequalalways
set hidden
set signcolumn=yes

set laststatus=2
set noshowmode
set autochdir

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:forest_night_enable_italic = 1
let g:forest_night_disable_italic_comment = 0
colorscheme forest-night

" [NOTE] for alphanumeric ligature for TODO, FIXME, etc
hi! link Todo Comment

let g:markdown_fenced_languages = [
      \ 'vim',
      \ 'help',
      \ 'python'
      \]

let g:vimsyn_embed= 'l'

" in millisecond, used for both CursorHold and CursorHoldI,
" use updatetime instead if not defined
let g:cursorhold_updatetime = 100
