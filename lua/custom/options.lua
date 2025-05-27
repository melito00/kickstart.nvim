vim.o.number = false
vim.o.mouse = ''

vim.o.scrolloff = 5 -- default 0, kickstart set 10

vim.o.hlsearch = true

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.showtabline = 2

vim.opt.formatoptions:remove { 'r', 'o' }

vim.api.nvim_set_keymap('i', '<c-f>', '<esc>A', { noremap = true })
