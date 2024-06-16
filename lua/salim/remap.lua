-- remaps
vim.api.nvim_set_keymap("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","q", "<esc>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<C-j>", "10j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-k>", "10k", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<C-j>", "10j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<C-k>", "10k", { noremap = true, silent = true })

-- windows
vim.api.nvim_set_keymap("n","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-,>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-,>", "<C-w>h", { noremap = true, silent = true })

-- lsps
vim.api.nvim_set_keymap("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>lm", "<cmd>Mason<CR>",   { noremap = true, silent = true })

-- lazy
vim.api.nvim_set_keymap("n","<leader>pu", "<cmd>Lazy update<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pc", "<cmd>Lazy check<CR>",  { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>ps", "<cmd>Lazy sync<CR>",   { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>pl", "<cmd>Lazy<CR>",        { noremap = true, silent = true })

-- Neo Tree
vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>Neotree action=focus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<CR>',       { noremap = true, silent = true })

-- Telescope
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags,  {})
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep,  {})
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers,    {})

-- bufferline
vim.keymap.set("n", "<M-&>", function() require("bufferline").go_to( 1, true) end, {})
vim.keymap.set("n", "<M-é>", function() require("bufferline").go_to( 2, true) end, {})
vim.keymap.set("n", '<M-">', function() require("bufferline").go_to( 3, true) end, {})
vim.keymap.set("n", "<M-'>", function() require("bufferline").go_to( 4, true) end, {})
vim.keymap.set("n", "<M-(>", function() require("bufferline").go_to( 5, true) end, {})
vim.keymap.set("n", "<M-->", function() require("bufferline").go_to( 6, true) end, {})
vim.keymap.set("n", "<M-è>", function() require("bufferline").go_to( 7, true) end, {})
vim.keymap.set("n", "<M-_>", function() require("bufferline").go_to( 8, true) end, {})
vim.keymap.set("n", "<M-ç>", function() require("bufferline").go_to( 9, true) end, {})
vim.keymap.set("n", "<M-à>", function() require("bufferline").go_to(10, true) end, {})

vim.api.nvim_set_keymap('n', '<M-Tab>',     '<cmd>BufferLineCycleNext<CR>',   {})
vim.api.nvim_set_keymap('n', '<M-S-Tab>',   '<cmd>BufferLineCyclePrev<CR>',   {})

vim.api.nvim_set_keymap('n', '<leader>bcc', '<cmd>BufferLineCloseOthers<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>bch', '<cmd>BufferLineCloseLeft<CR>',   {})
vim.api.nvim_set_keymap('n', '<leader>bcl', '<cmd>BufferLineCloseRight<CR>',  {})

-- lazygit floating window
require("salim.lazyGit")
vim.keymap.set('n', '<leader>gl', Floating_lazygit, { noremap = true, silent = true })
