require("salim.remap")
require("salim.lazy_init")
-- TO DO:
-- [ ] cmp pour path
-- [x] enelever le simbole nule teh [+] sur lualine
-- [x] keymap pour fermer (tout) les buffers

vim.o.nu              = true
vim.o.tabstop         = 4
vim.o.softtabstop     = 4
vim.o.shiftwidth      = 4
vim.o.expandtab       = true
vim.o.clipboard       = "unnamedplus"
vim.o.signcolumn      = 'yes'
vim.o.showmode        = false
vim.o.swapfile        = false
vim.o.backup          = false
vim.o.termguicolors   = true

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldcolumn = '1'
vim.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.o.fillchars = "fold: ,foldopen:,foldclose:,foldsep: "

