local o = vim.opt
local g = vim.g

-- disable netrw to use nvim-tree instead
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- basic
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.smartindent = true
o.breakindent = true
o.mouse = 'a'
o.wrap = true
o.cmdheight = 0

-- fold
o.foldlevel = 1000 -- do not fold (until i understand how folding works)

-- tabs
o.expandtab = false
o.tabstop = 2
o.shiftwidth = 2
o.shiftround = true

-- search
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.incsearch = true
o.gdefault = true

-- column 81 and current line highlighting
vim.api.nvim_exec([[
set colorcolumn=81
highlight ColorColumn ctermbg=0 guibg=lightgrey
]], false);
o.cursorline = true

-- tab width per language
vim.api.nvim_exec([[
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
]], false);

-- misc
o.errorbells = false
o.swapfile = false
o.updatetime = 750
o.autoread = true

-- -- PLUGIN SETTINGS

-- colorscheme + statusline
o.termguicolors = true
g.lightline = {['colorscheme'] = 'rosepine'}
o.showmode = false
o.background = 'dark'

-- rainbow parenthesis
g.rainbow_active = 1 -- set to 0 if you want to enable it later via :RainbowToggle

-- nvim-tree config
require("nvim-tree").setup()
