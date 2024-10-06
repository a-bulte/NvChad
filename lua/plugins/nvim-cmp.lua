local cmp = require("cmp")

return
{
  "hrsh7th/nvim-cmp",
  opts = {
    mapping = {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<C-e>"] = cmp.mapping.abort(),
      ["<Down>"] = cmp.mapping.select_next_item(),
      ["<Up>"] = cmp.mapping.select_prev_item(),
    },
    completion = {
      completeopt = "menu,menuone,noinsert,noselect",
    },
  }
}
