return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.esupports.hop"] = {},
        ["core.concealer"] = {
          config = {
            folds = false,
            icon_preset = "diamond",
          },
        }, -- Adds pretty icons to your documents
        ["core.export"] = {},
        ["core.summary"] = {},
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    },
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
}
