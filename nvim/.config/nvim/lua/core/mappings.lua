-- leader
vim.g.mapleader = " "

-- subst
vim.api.nvim_set_keymap('v', '<leader>ss', ":s/",
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<leader>ss', ":%s/",
                        {noremap = true, silent = false})

-- toggle floating terminal
vim.api.nvim_set_keymap('n', '<leader>tt', ":FloatermToggle<cr>",
                        {noremap = true, silent = true})
vim.api.nvim_set_keymap('t', '<leader>tt', "<C-\\><C-n>:FloatermToggle<CR>",
                        {noremap = true, silent = true})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
