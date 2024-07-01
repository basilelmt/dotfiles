return {
  'nvim-neorg/neorg',
  ft = 'norg',
  run = ':Neorg sync-parsers', -- This is the important bit!
  opts = {
    load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.esupports.hop'] = {},
      ['core.concealer'] = {
        config = {
          folds = false,
          icon_preset = 'diamond',
        },
      }, -- Adds pretty icons to your documents
      ['core.export'] = {},
      ['core.summary'] = {},
      ['core.dirman'] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            notes = '~/notes',
          },
        },
      },
    },
  },
}
