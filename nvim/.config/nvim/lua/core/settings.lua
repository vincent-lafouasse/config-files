-- disable netrw to use nvim-tree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- basic
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.breakindent = true
vim.o.mouse = 'a'
vim.o.wrap = true

-- fold
vim.o.foldlevel = 1000

-- tabs
vim.o.expandtab = false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true

-- search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.gdefault = true

-- column 81 and current line highlighting
vim.api.nvim_exec([[
set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey
]], false);
vim.o.cursorline = true

-- tab width per language
vim.api.nvim_exec([[
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
]], false);

-- misc
vim.o.errorbells = false
vim.o.swapfile = false
vim.o.updatetime = 750
vim.o.autoread = true

-- -- PLUGIN SETTINGS

-- colorscheme + statusline
vim.o.termguicolors = true
vim.g.lightline = {['colorscheme'] = 'rosepine'}
vim.o.showmode = false
vim.o.background = 'dark'

-- rainbow parenthesis
vim.g.rainbow_active = 1 -- set to 0 if you want to enable it later via :RainbowToggle

-- nvim-tree config
require("nvim-tree").setup()
