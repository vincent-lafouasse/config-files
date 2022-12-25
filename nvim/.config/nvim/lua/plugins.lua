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
    use 'itchyny/lightline.vim'
    use {"catppuccin/nvim", as = "catppuccin"}

    -- File explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    -- rainbow parenthesis
    use 'luochen1990/rainbow'

    -- floating term
    use 'voldikss/vim-floaterm'

    -- git integration
    use 'airblade/vim-gitgutter'

    -- language support
    use 'JuliaEditorSupport/julia-vim'
    use 'cespare/vim-toml'
    use 'plasticboy/vim-markdown'

    -- parse and highlight
    use {
        'nvim-treesitter/nvim-treesitter',
        requires = 'p00f/nvim-ts-rainbow',
        run = ':TSUpdate'
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
