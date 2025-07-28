return {
  -- Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
    },
  },

  -- Rose Pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      disable_background = true,
    },
    config = function(_, opts)
      require("rose-pine").setup({
        variant = "moon", -- options: auto, main, moon, dawn
        disable_background = true, -- transparent bg
      })
      vim.cmd([[hi CursorLine guibg=NONE]])
    end,
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
}
