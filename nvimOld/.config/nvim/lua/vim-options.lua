vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.opt.swapfile = false


-- Change nvim movement to spanish keyboard
vim.keymap.set('n', 'j', '<left>')
vim.keymap.set('n', 'k', '<down>')
vim.keymap.set('n', 'l', '<up>')
vim.keymap.set('n', 'ñ', '<right>')
vim.keymap.set('n', 'h', '<Nop>')

vim.keymap.set('v', 'j', '<left>')
vim.keymap.set('v', 'k', '<down>')
vim.keymap.set('v', 'l', '<up>')
vim.keymap.set('v', 'ñ', '<right>')
vim.keymap.set('v', 'h', '<Nop>')

vim.keymap.set('o', 'j', '<left>')
vim.keymap.set('o', 'k', '<down>')
vim.keymap.set('o', 'l', '<up>')
vim.keymap.set('o', 'ñ', '<right>')
vim.keymap.set('o', 'h', '<Nop>')


-- Navigate vim panes better
vim.keymap.set('n', '<c-j>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-k>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-ñ>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Números de línea absolutos y relativos
--vim.opt.relativenumber = true
vim.opt.number = true
-- vim.opt.signcolumn = "number" 

