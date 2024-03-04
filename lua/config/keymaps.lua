-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Replace window keymaps
-- First disable defaults then set new keymaps
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")

vim.keymap.set("n", "<leader>Ww", "<C-W>p", { desc = "Other window", remap = true })
vim.keymap.set("n", "<leader>Wd", "<C-W>c", { desc = "Delete window", remap = true })
vim.keymap.set("n", "<leader>W-", "<C-W>s", { desc = "Split window below", remap = true })
vim.keymap.set("n", "<leader>W|", "<C-W>v", { desc = "Split window right", remap = true })

-- Save buffer with <leader>w
vim.keymap.del({ "i", "x", "n", "s" }, "<C-s>")
-- keybind is set in plugins/editor.lua

vim.keymap.del("n", "<leader>`")
vim.keymap.del("n", "<leader>K")

-- NvTerm
vim.keymap.set({ "n", "t" }, "<C-\\>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "NvTerm", remap = true })
