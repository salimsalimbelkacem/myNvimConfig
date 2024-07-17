-- * remaps
vim.api.nvim_set_keymap("v","q", "<esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<S-p>", "k<esc>p", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'k', 'gk', { noremap = true, silent = true })

-- ** move lines
vim.api.nvim_set_keymap("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })


-- ** jump 10 lines
vim.api.nvim_set_keymap("n","<C-j>", "10j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-k>", "10k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<C-j>", "10j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<C-k>", "10k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-j>", "<esc>10ji", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-k>", "<esc>10ki", { noremap = true, silent = true })

-- ** move lines 10 times
-- vim.api.nvim_set_keymap("i","<C-A-j>", "<esc><cmd>m .+10<CR>==gi", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i","<C-A-k>", "<esc><cmd>m .-11<CR>==gi", { noremap = true, silent = true })
--
-- vim.api.nvim_set_keymap("v","<C-A-j>", "<cmd>m '>+10<CR>gv==gv", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("v","<C-A-k>", "<cmd>m '<-11<CR>gv==gv", { noremap = true, silent = true })
--
-- vim.api.nvim_set_keymap("n","<C-A-j>", "<cmd>m .+10<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n","<C-A-k>", "<cmd>m .-11<CR>", { noremap = true, silent = true })

-- ** select line
vim.api.nvim_set_keymap("n","<C-l>", "0v$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<C-l>", "<esc>0v$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-l>", "<esc>0v$", { noremap = true, silent = true })

-- ** windows
vim.api.nvim_set_keymap("n","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-,>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-,>", "<C-w>h", { noremap = true, silent = true })

-- ** open lsp tools
vim.api.nvim_set_keymap("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>lm", "<cmd>Mason<CR>",   { noremap = true, silent = true })

-- ** lazy (p for packages)
vim.api.nvim_set_keymap("n","<leader>pu", "<cmd>Lazy update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pc", "<cmd>Lazy check<CR>",  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>ps", "<cmd>Lazy sync<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pl", "<cmd>Lazy<CR>",        { noremap = true, silent = true })


-- ** lazygit floating window
require("salim.lazyGit")
vim.keymap.set('n', '<leader>gl', Floating_lazygit, { noremap = true, silent = true })
