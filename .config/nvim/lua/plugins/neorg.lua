return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.norg.esupports.hop"] = {},
        ["core.norg.concealer"] = {
          config = {
            folds = false,
            icon_preset = "diamond",
          },
        }, -- Adds pretty icons to your documents
        -- ["core.norg.completion"] = {},
        ["core.norg.dirman"] = { -- Manages Neorg workspaces
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
