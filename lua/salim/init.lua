vim.g.mapleader = " "

vim.o.signcolumn     = 'yes'
vim.o.clipboard      = "unnamedplus"
vim.o.showmode       = false
vim.o.termguicolors  = true

vim.o.nu  = true
vim.o.rnu = true

vim.o.undofile = true
vim.o.undodir  = "/home/salim/.vim/vimundo"

vim.o.expandtab   = true
vim.o.softtabstop = 4
vim.o.shiftwidth  = 4
vim.o.tabstop     = 4

vim.o.swapfile = false
vim.o.backup   = false

vim.o.foldenable     = true
vim.o.foldlevelstart = 99
vim.foldlevel        = 99
vim.o.foldcolumn     = '1'
vim.o.foldmethod     = "expr"
vim.o.fillchars      = "foldopen:,foldclose:,foldsep: "
vim.o.foldexpr       = "nvim_treesitter#foldexpr()"

require("salim.lazy_init")
require("salim.remap")
