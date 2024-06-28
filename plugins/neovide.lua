if not vim.g.neovide then
  return {} -- do nothing if not in a Neovide session
end

if package.config:sub(1, 1) == "\\" then
  return {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      options = {
        opt = { -- configure vim.opt options
          -- configure font
          guifont = "JetBrainsMono Nerd Font:h13",
          -- line spacing
          -- linespace = 0,
        },
        g = { -- configure vim.g variables
          -- configure scaling
          -- neovide_scale_factor = 1.0,
          -- configure padding
          -- neovide_padding_top = 0,
          -- neovide_padding_bottom = 0,
          -- neovide_padding_right = 0,
          -- neovide_padding_left = 0,
        },
      },
    },
  }
end

return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "JetBrainsMono Nerd Font:h17",
        -- line spacing
        -- linespace = 0,
      },
      g = { -- configure vim.g variables
        -- configure scaling
        -- neovide_scale_factor = 1.0,
        -- configure padding
        -- neovide_padding_top = 0,
        -- neovide_padding_bottom = 0,
        -- neovide_padding_right = 0,
        -- neovide_padding_left = 0,
      },
    },
  },
}
