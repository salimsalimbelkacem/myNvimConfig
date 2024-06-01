vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap("n","<A-j>", ":m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", ":m .-2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","<A-j>", "<esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc>:m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", ":m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", ":m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-,>", "<C-w>h", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-,>", "<C-w>h", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","(", "()<esc>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","{", "{}<esc>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","'", "''<esc>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i",'"', '""<esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","[", "[]<esc>i", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","/*", "/**/<esc>hi", { noremap = true, silent = true })
