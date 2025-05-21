-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--Leader pv to open file explore mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--Half page jumps center curser at the center of the screen
vim.keymap.set("n", "<S-d>", "<C-d>zz")
vim.keymap.set("n", "<S-u>", "<C-u>zz")

--Changes <C-d> to delete everything after a line, This was overridden in the above line
vim.keymap.set("n", "<C-d>", "<S-d>")

--Added telescope command to show all functions in a file
vim.keymap.set(
	"n",
	"<leader>m",
	":lua require('telescope.builtin').lsp_document_symbols({ symbols='function' })<Enter>"
)

--Changed jump to end of line
vim.keymap.set("n", "<C-h>", "<S-^>")
vim.keymap.set("n", "<C-l>", "<S-^>")

--Terminal <esc> to go back to normal mode
vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
