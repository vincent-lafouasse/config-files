set number
set relativenumber
set noerrorbells
set smartindent
set expandtab
set noswapfile

" Always wrap long lines:
set wrap

colo default
syntax on
set ts=4
set sts=4
set sw=0
:set mouse-=a
:map <F2> :let @/=""
:map <F3> :set nonumber
:map <F4> :set number
:map <F5> :w !sudo tee %

set noshowmode

set laststatus=2

set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'
Plug 'itchyny/lightline.vim'
Plug 'JuliaEditorSupport/julia-vim'

call plug#end()

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark
