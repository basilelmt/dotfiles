return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({}, {
        names = false,
      })
    end,
  },

  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   opts = {
  --     -- palette_overrides = {
  --     --   dark0 = "#1D2021",
  --     --   dark1 = "#282828",
  --     -- },
  --   },
  -- },
  --

  { "catppuccin/nvim", name = "mocha" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
