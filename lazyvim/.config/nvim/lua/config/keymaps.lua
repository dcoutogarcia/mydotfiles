-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set movement keys to spanish keyboard

vim.keymap.set("n", "j", "<left>")
vim.keymap.set("n", "k", "g<down>")
vim.keymap.set("n", "l", "g<up>")
vim.keymap.set("n", "ñ", "<right>")
vim.keymap.set("n", "h", "<Nop>")

vim.keymap.set("v", "j", "<left>")
vim.keymap.set("v", "k", "<down>")
vim.keymap.set("v", "l", "<up>")
vim.keymap.set("v", "ñ", "<right>")
vim.keymap.set("v", "h", "<Nop>")

vim.keymap.set("o", "j", "<left>")
vim.keymap.set("o", "k", "<down>")
vim.keymap.set("o", "l", "<up>")
vim.keymap.set("o", "ñ", "<right>")
vim.keymap.set("o", "h", "<Nop>")
