-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
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
  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "███    ███  █████  ██████  ██     ██████",
        "████  ████ ██   ██ ██   ██ ██     ██    ",
        "██ ████ ██ ███████ ██████  ██     █████ ",
        "██  ██  ██ ██   ██ ██      ██     ██    ",
        "██      ██ ██   ██ ██      ██████ ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  --{ "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
}
