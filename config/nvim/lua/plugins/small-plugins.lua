return {
  -- {
  --   "ecthelionvi/NeoComposer.nvim",
  --   dependencies = {
  --     "kkharji/sqlite.lua",
  --     config = function()
  --       require("telescope").load_extension("macros")
  --       require("NeoComposer.ui").status_recording()
  --     end,
  --   },
  --   opts = {},
  -- },
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "cbochs/portal.nvim",
    -- Optional dependencies
    dependencies = {
      "cbochs/grapple.nvim",
      "ThePrimeagen/harpoon",
    },
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  { "mechatroner/rainbow_csv" },
  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim", -- required by telescope
      "MunifTanjim/nui.nvim",

      -- optional
      "nvim-tree/nvim-web-devicons",

      -- recommended
      -- "rcarriga/nvim-notify",
    },
    opts = {
      -- configuration goes here
    },
  },
}
