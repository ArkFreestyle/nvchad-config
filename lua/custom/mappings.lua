---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- Copy all
    ["<C-c>"] = { "<cmd> %y+ <CR>", "copy whole file" },

    -- Copy paste
    -- ["<leader>y"] = { '"+y', "copy to system clipboard" },
    -- ["<leader>p"] = { '"+p', "paste from system clipboard" },

    -- Delete single character without storing it in a register
    ["x"] = { '"_x' },

    -- Split screen
    ["<leader>sv"] = { "<C-w>v", "split window vertically" },
    ["<leader>sh"] = { "<C-w>s", "split window horizontally" },
    ["<leader>sx"] = { ":close<CR>", "close current split window" },

    -- Keep cursor in the same location when joining lines
    ["J"] = { "mzJ`z" },

    -- Keep cursor in the center when scrolling or searching
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },
    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },
  },
  i = {
    ["kj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
  v = {
    -- Move highlighted text around
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
  },
  x = {
    -- Don't store things you paste over into your register
    -- [ "<leader>p" ] = { "\"_dP" },
  }
}

-- more keybinds!

return M
