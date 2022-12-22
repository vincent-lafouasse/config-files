set sts=4
set sw=0

map <F2> :let @/=""
map <F3> :set nonumber
map <F4> :set number
map <F5> :w !sudo tee %

set nobackup
set undodir=$HOME/.vim/undodir
set undofile

syn match cType "\<[a-zA-Z_][a-zA-Z0-9_]*_[ft]\>"

call plug#begin('$HOME/.vim/plugged')

Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'mbbill/undotree'
Plug 'vimwiki/vimwiki'
Plug 'vim-test/vim-test'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'sheerun/vim-polyglot'


call plug#end()

"""" enable 24bit true color
" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

