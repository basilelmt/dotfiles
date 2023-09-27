return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        names = false,
      })
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
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

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = "latte",
          dark = "mocha",
        },
        transparent_background = true, -- disables setting the background color.
        integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = true,
          mini = false,
          leap = true,
          -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
        },
      })
    end,
  },

  {
    "mini.animate",
    config = function()
      require("mini.animate").setup({
        open = {
          -- Whether to enable this animation
          enable = false,
        },
        close = {
          -- Whether to enable this animation
          enable = false,
        },
      })
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
