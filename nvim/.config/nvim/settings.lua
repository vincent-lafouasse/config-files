vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.breakindent = true

-- tabs
vim.o.expandtab = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.gdefault = true

-- column 80 highlighting
vim.api.nvim_exec([[
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
]], false);

-- misc
vim.o.mouse = 'a'
vim.o.wrap = true
vim.o.errorbells = false
vim.o.swapfile = false


-- colorscheme + statusline
vim.o.termguicolors = true
vim.g.lightline = {['colorscheme'] = 'jellybeans',}
vim.o.showmode = false

vim.g.gruvbox_contrast_dark = "hard"
vim.cmd('colorscheme gruvbox')
vim.o.background = 'dark'
