return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      palette_overrides = {
        dark0 = "#1D2021",
        dark1 = "#282828",
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
