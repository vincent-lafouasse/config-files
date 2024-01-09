" to install the package manager :
" run `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
" then run the vim command `:PlugInstall` to install plugins

colo default
syntax on

set number
set mouse=a
set backspace=indent,eol,start

set noexpandtab
set tabstop=4
set shiftwidth=4
set smartindent
set smarttab

set wrap
set noerrorbells
set noswapfile
set noshowmode
set laststatus=2
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
