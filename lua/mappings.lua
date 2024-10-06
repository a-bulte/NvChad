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

-- Window focus
map("n", "<C-Left>", "<C-w><Left>", { desc = "Focus left window" })
map("n", "<C-Right>", "<C-w><Right>", { desc = "Focus right window" })
map("n", "<C-Up>", "<C-w><Up>", { desc = "Focus up window" })
map("n", "<C-Down>", "<C-w><Down>", { desc = "Focus down window" })

-- map({ "n",o "i", "v" }, "<C-s>", "<cmd> w <cr>")
