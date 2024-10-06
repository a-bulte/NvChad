require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nvim-tree
map("n", "<leader>e", "<cmd> NvimTreeToggle <cr>", { desc = "Toggle NvimTree" })

-- lazygit
map({ "n", "t" }, "<C-g>", function ()
  require("nvchad.term").toggle
  { pos = "float",
    id = "lazygit_term",
    cmd = "lazygit" }
end, { desc = "Open floating term with lazygit" } )

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
