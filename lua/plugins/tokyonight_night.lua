return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Ensure it loads before other plugins
  lazy = false, -- Load on startup only
  opts = {
    style = "night", -- "storm", "moon", "night", or "day"
    transparent = true, -- Enable transparency
    styles = {
      sidebars = "transparent", -- Transparent sidebars like NvimTree
      floats = "transparent", -- Transparent floating windows
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd([[colorscheme tokyonight]])

    -- Fully transparent UI elements
    vim.cmd([[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi NormalFloat guibg=NONE ctermbg=NONE
      hi FloatBorder guibg=NONE ctermbg=NONE
      hi CursorLine guibg=NONE ctermbg=NONE
      hi CursorLineNr guibg=NONE ctermbg=NONE
    ]])
  end,
}
