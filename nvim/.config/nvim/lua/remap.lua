vim.g.mapleader = " "

-- netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);

-- subst
vim.api.nvim_set_keymap('v', '<leader>ss', ":s/",
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>ss', ":%s/",
                        {noremap = true, silent = false})
