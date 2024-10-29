-- * remaps
vim.api.nvim_set_keymap("v","q", "<esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<S-p>", "k<esc>p", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<leader>ts", "<cmd>vs term://sh<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', ';;', 'm`<S-a>;<ESC>``', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', '<cmd>noh<CR>', { noremap = true, silent = true })

-- ** move lines
vim.api.nvim_set_keymap("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

-- ** open lsp tools
vim.api.nvim_set_keymap("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>lm", "<cmd>Mason<CR>",   { noremap = true, silent = true })

-- ** lazy (p for packages)
vim.api.nvim_set_keymap("n","<leader>pu", "<cmd>Lazy update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pc", "<cmd>Lazy check<CR>",  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>ps", "<cmd>Lazy sync<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pl", "<cmd>Lazy<CR>",        { noremap = true, silent = true })

-- ** lazygit floating window
vim.keymap.set('n', '<leader>gl', require("salim.lazyGit").Floating_lazygit, { noremap = true, silent = true })
