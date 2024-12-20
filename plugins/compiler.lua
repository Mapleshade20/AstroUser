if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "Zeioth/compiler.nvim",
  dependencies = {
    {
      "stevearc/overseer.nvim",
      opts = {
        task_list = { -- this refers to the window that shows the result
          direction = "bottom",
          min_height = 25,
          max_height = 25,
          default_detail = 1,
          bindings = {
            ["q"] = function() vim.cmd "OverseerClose" end,
          },
        },
      },
      config = function(_, opts) require("overseer").setup(opts) end,
    },
  },
  cmd = { "CompilerOpen", "CompilerToggleResults" },
  opts = {},
  keys = {
    {
      "<leader>rr",
      "<cmd>CompilerOpen<cr>",
      desc = "Open Compiler",
    },
    {
      "<leader>rt",
      "<cmd>CompilerToggleResults<cr>",
      desc = "Toggle Results",
    },
  },
}
