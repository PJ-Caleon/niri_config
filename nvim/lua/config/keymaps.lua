-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

local function saveNotify()
  vim.cmd("w")
  local filename = vim.fn.expand("%:t")
  if filename == "" then
    filename = "Untitled file"
  end
  vim.notify(filename .. " saved", vim.log.levels.INFO)
end

-- Press ctrl+x to enter insert mode
keymap.set("n", "<C-x>", "i", { desc = "Enter insert mode" })
keymap.set("i", "<C-x>", "<Nop>", { desc = "Disable suspend" })

--  Press ctrl+z to enter normal mode
keymap.set("i", "<C-z>", "<ESC>", { desc = "Exit insert mode" })
keymap.set("n", "<C-z>", "<Nop>", { desc = "Disable suspend" })

-- Press ctrl+s to Save
keymap.set("n", "<C-s>", saveNotify, { desc = "Save file" })
keymap.set("i", "<C-s>", saveNotify, { desc = "Save file" })
keymap.set("v", "<C-s>", saveNotify, { desc = "Save file" })

--Press ctrl+q to quit from normal mode
keymap.set("n", "<C-q>", "<cmd>q<CR>", { desc = "Exit file" })

-- Press ctrl+t to call terminal
keymap.set("n", "<C-t>", "<cmd>lua Snacks.terminal.toggle()<CR>", { desc = "toggle terminal" })
keymap.set("t", "<C-t>", "<cmd>lua Snacks.terminal.toggle()<CR>", { desc = "toggle terminal" })
