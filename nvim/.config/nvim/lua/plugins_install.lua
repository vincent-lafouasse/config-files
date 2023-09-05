local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",

	{
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = {
					"c", "cpp", "make", "cmake", "rust", "java",
					"haskell", "clojure", "ocaml",
					"javascript", "html", "css",
					"lua", "vim", "vimdoc",
					"csv", "json", "latex", "markdown", "toml", "tsx", "xml",
					"yaml",
					"diff", "doxygen", "gitignore",
				},
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
		end
	}
})
