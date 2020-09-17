call plug#begin(stdpath('data') . '/plugged')

Plug '907th/vim-auto-save'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
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
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  " Uncomment to have 'bomb' on by default for new files.
  " Note, this will not apply to the first, empty buffer created at Vim startup.
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Vimtex
let g:tex_flavor = "tex"

" Dracula theme
colorscheme dracula

" vim-airline config
" powerline symbols
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#formatter = 'default'
