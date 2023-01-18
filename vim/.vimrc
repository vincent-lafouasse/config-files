set number
set relativenumber
set noerrorbells
set smartindent
set expandtab
set noswapfile

set wrap

set backspace=indent,eol,start
colo default
syntax on
set ts=4
set sts=4
set sw=0
:set mouse=a
:map <F2> :let @/=""
:map <F3> :set nonumber
:map <F4> :set number
:map <F5> :w !sudo tee %

set noshowmode

set laststatus=2

set nobackup
set undodir=$HOME/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('$HOME/.vim/plugged')

Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'vim-test/vim-test'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'cespare/vim-toml'

call plug#end()

set termguicolors
let g:lightline = {'colorscheme': 'catppuccin_mocha'}
colorscheme catppuccin_mocha
set background=dark
