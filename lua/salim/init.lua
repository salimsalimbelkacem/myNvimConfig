vim.g.mapleader = " "

vim.o.termguicolors  = true
vim.o.signcolumn     = 'yes'
vim.o.clipboard      = "unnamedplus"
vim.o.showmode       = false
vim.o.nu             = true
vim.o.relativenumber = true

vim.o.undofile       = true
vim.o.undodir        = "/home/salim/.vim/vimundo"

vim.o.softtabstop    = 4
vim.o.shiftwidth     = 4
vim.o.expandtab      = true
vim.o.tabstop        = 4

vim.o.swapfile       = false
vim.o.backup         = false

vim.o.foldlevelstart = 99
vim.o.foldcolumn     = '1'
vim.o.foldmethod     = "expr"
vim.o.foldenable     = true
vim.o.fillchars      = "foldopen:,foldclose:,foldsep: "
vim.o.foldexpr       = "nvim_treesitter#foldexpr()"
vim.foldlevel        = 99

require("salim.lazy_init")
require("salim.remap")
