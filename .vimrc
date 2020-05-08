call plug#begin(stdpath('data') . '/plugged')

Plug '907th/vim-auto-save'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ycm-core/YouCompleteMe'

" Initialize plugin system
call plug#end()

" My conf

set expandtab
set shiftwidth=4
set tabstop=4
set autoindent
set smartindent
set number

" YouCompleteMe conf
let g:ycm_confirm_extra_conf = 0
