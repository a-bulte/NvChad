return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "rcarriga/nvim-notify",
    config = function()
      local notify = require("notify")
      notify.setup({
        top_down = false,
        max_width = 50,
      })
      vim.notify = notify
    end,
    event = "VeryLazy",
  },

  {
    "folke/which-key.nvim",
    opts = {
      preset = "helix",
    },
    event = "VeryLazy",
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("todo-comments").setup({})
    end,
    event = "VeryLazy",
  },

  {
    "smoka7/hop.nvim",
    event = "VeryLazy",
    config = function ()
      require("hop").setup({
        keys = "nretsiau"
      })
    end
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
