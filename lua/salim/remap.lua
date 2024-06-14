vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap("n","<A-j>", "<cmd>m .+1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<A-k>", "<cmd>m .-2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","<A-j>", "<esc><cmd>m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<A-k>", "<esc><cmd>m .-2<CR>==gi", { noremap = true, silent = true })

vim.api.nvim_set_keymap("v","<A-j>", "<cmd>m '>+1<CR>gv==gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","<A-k>", "<cmd>m '<-2<CR>gv==gv", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<C-,>", "<C-w>h", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i","<C-;>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i","<C-,>", "<C-w>h", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<leader>lm", "<cmd>Mason<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>li", "<cmd>LspInfo<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n","<leader>pl", "<cmd>Lazy<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n","<leader>ps", "<cmd>Lazy sync<CR>", { noremap = true, silent = true })

-- vim.api.nvim_set_keymap("n","q:", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v","q", "<esc>", { noremap = true, silent = true })

function _G.open_floating_lazygit()
    local buf = vim.api.nvim_create_buf(false, true)
    local width = math.ceil(vim.o.columns * 0.8)
    local height = math.ceil(vim.o.lines * 0.8)
    local opts = {
        style = "minimal",
        relative = "editor",
        width = width,
        height = height,
        row = math.ceil((vim.o.lines - height) / 2),
        col = math.ceil((vim.o.columns - width) / 2),
    }
    local win = vim.api.nvim_open_win(buf, true, opts)
    vim.fn.termopen("lazygit", {
        on_exit = function()
            vim.api.nvim_win_close(win, true)
        end
    })
    vim.cmd("startinsert")
    vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>close!<CR>', { noremap = true, silent = true })
end

vim.api.nvim_set_keymap('n', '<leader>gl', '<cmd>lua open_floating_lazygit()<CR>', { noremap = true, silent = true })
