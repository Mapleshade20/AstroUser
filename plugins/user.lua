return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  "gbprod/cutlass.nvim",

  {
    "CRAG666/code_runner.nvim",
    cmd = "RunCode",
    keys = {
      {
        "<leader>r",
        "<cmd>RunCode<cr>",
        desc = "Run Code!",
      },
    },
    opts = {
      mode = "toggleterm",
      focus = false,
      filetype = {
        python = "python -u",
      },
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
}
