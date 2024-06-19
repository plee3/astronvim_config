-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set number on and relative number off
vim.cmd "set number norelativenumber"

-- Setup oil options
require("oil").setup({
  columns = {
    "icon"
  },
  keymaps = {
    ["<C-h>"] = false,
    ["<C-l>"] = false,
  },
  delete_to_trash = true,
  win_options = {
    wrap = true,
  },
  view_options = {
    show_hidden = true,
    natural_order = true,
  },
})

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "+", "<CMD>set ma<CR>", { desc = "Set buffer modifiable" })

--[[-- Original code
-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
]]--
