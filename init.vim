set nocompatible

call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'luochen1990/rainbow'
Plug 'liuchengxu/vista.vim'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-sandwich'
Plug 'sainnhe/forest-night'
Plug 'edkolev/tmuxline.vim'
Plug 'justinmk/vim-sneak'
Plug 'simnalamburt/vim-mundo'
Plug 'Asheq/close-buffers.vim'
Plug 'wfxr/minimap.vim'
Plug 'tpope/vim-commentary'

Plug 'mhinz/vim-startify'

Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-refactor'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'steelsojka/completion-buffers'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-mapping-project-top.vim'

Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'ryanoasis/vim-devicons'

Plug 'jpalardy/vim-slime'
Plug 'sbdchd/neoformat'

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
call plug#end()

source $HOME/.config/nvim/config/basic_conf.vim
source $HOME/.config/nvim/config/diagnostic_conf.vim
source $HOME/.config/nvim/config/doge_conf.vim
source $HOME/.config/nvim/config/fern_conf.vim
source $HOME/.config/nvim/config/fzf_conf.vim
source $HOME/.config/nvim/config/indentline_conf.vim
source $HOME/.config/nvim/config/keys_conf.vim
source $HOME/.config/nvim/config/lightline_conf.vim
source $HOME/.config/nvim/config/mundo_conf.vim
source $HOME/.config/nvim/config/neoformat_conf.vim
source $HOME/.config/nvim/config/nvimlsp_conf.vim
source $HOME/.config/nvim/config/rainbow_conf.vim
source $HOME/.config/nvim/config/signify_conf.vim
source $HOME/.config/nvim/config/slime_conf.vim
source $HOME/.config/nvim/config/sneak_conf.vim
source $HOME/.config/nvim/config/startify_conf.vim
source $HOME/.config/nvim/config/terminal_conf.vim
source $HOME/.config/nvim/config/treesitter_conf.vim
source $HOME/.config/nvim/config/vimspector_conf.vim
source $HOME/.config/nvim/config/vista_conf.vim
