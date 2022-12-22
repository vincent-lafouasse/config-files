-- Install packer
local install_path = vim.fn.stdpath('data') ..
                         '/site/pack/packer/start/packer.nvim'
local install_plugins = false

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    print('Installing packer...')
    local packer_url = 'https://github.com/wbthomason/packer.nvim'
    vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
    print('Done.')

    vim.cmd('packadd packer.nvim')
    install_plugins = true
end

-- plugins go in here
require('packer').startup(function(use)
    -- Package manager
    use 'wbthomason/packer.nvim'

    -- colorscheme + statusline
    use 'morhetz/gruvbox'
    use 'itchyny/lightline.vim'

    -- rainbow parenthesis
    use 'luochen1990/rainbow'

    -- floating term
    use 'voldikss/vim-floaterm'

    -- language support
    use 'JuliaEditorSupport/julia-vim'
    use 'cespare/vim-toml'
    use 'plasticboy/vim-markdown'

    -- parse and highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = 'p00f/nvim-ts-rainbow',
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "c", "lua", "rust", "cpp", "latex", "python"
                },
                auto_install = true,
                highlight = {enable = true},
                rainbow = {
                    enable = true,
                    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
                    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
                    max_file_lines = nil -- Do not enable for files with more than n lines, int
                    -- colors = {}, -- table of hex strings
                    -- termcolors = {} -- table of colour name strings
                }
            }
        end

    }
    -- 42
    use 'cacharle/c_formatter_42.vim'
    use 'pbondoer/vim-42header'

    -- deal with bracket pairs etc
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    if install_plugins then require('packer').sync() end
end)

if install_plugins then return end
