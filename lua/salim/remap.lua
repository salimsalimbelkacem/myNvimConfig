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


-- Function to open a floating terminal running lazygit
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

  -- Map 'q' to close the floating window
  vim.api.nvim_buf_set_keymap(buf, 'n', 'q', '<cmd>close!<CR>', { noremap = true, silent = true })
end

-- Keymap to open floating lazygit terminal
vim.api.nvim_set_keymap('n', '<leader>gl', ':lua open_floating_lazygit()<CR>', { noremap = true, silent = true })

