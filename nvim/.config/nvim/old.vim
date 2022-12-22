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
set mouse=a
map <F2> :let @/=""
map <F3> :set nonumber
map <F4> :set number
map <F5> :w !sudo tee %

set noshowmode

set laststatus=2

set nobackup
set undodir=$HOME/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

syn match cType "\<[a-zA-Z_][a-zA-Z0-9_]*_[ft]\>"

call plug#begin('$HOME/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'vim-test/vim-test'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'cespare/vim-toml'
Plug 'luochen1990/rainbow'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'cacharle/c_formatter_42.vim'
Plug 'pbondoer/vim-42header'
Plug 'sheerun/vim-polyglot'


call plug#end()

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

