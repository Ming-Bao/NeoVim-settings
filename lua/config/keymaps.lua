-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Leader pv to open file explore mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Half page jumps center curser at the center of the screen
vim.keymap.set("n", "<S-d>", "<C-d>zz")
vim.keymap.set("n", "<S-u>", "<C-u>zz")
