call plug#begin(stdpath('data') . '/plugged')

Plug '907th/vim-auto-save'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-markdown'

" Initialize plugin system
call plug#end()

" My conf
set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set number
set relativenumber
syntax enable
filetype plugin indent on

" YouCompleteMe conf
let g:ycm_confirm_extra_conf = 0

" Dracula theme
colorscheme dracula
