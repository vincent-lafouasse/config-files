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

-- tab width per language
vim.api.nvim_exec([[
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
]], false);

-- misc
vim.o.mouse = 'a'
vim.o.wrap = true
vim.o.errorbells = false
vim.o.swapfile = false

-- -- PLUGIN SETTINGS

-- colorscheme + statusline
vim.o.termguicolors = true
vim.g.lightline = {['colorscheme'] = 'rosepine'}
vim.o.showmode = false
vim.o.background = 'dark'

-- rainbow parenthesis
vim.g.rainbow_active = 1 -- set to 0 if you want to enable it later via :RainbowToggle

