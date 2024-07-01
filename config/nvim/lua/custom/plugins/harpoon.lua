return {
  'ThePrimeagen/harpoon',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = true,
  keys = {
    { '<leader>m', "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = 'Mark file with harpoon' },
    { '<S-h>', "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = 'Go to next harpoon mark' },
    { '<S-l>', "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = 'Go to previous harpoon mark' },
    { '<leader>h', "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = 'Show harpoon marks' },
    {
      '<leader>1',
      function()
        require('harpoon.ui').nav_file(1)
      end,
      desc = 'harpoon to file 1',
    },
    {
      '<leader>2',
      function()
        require('harpoon.ui').nav_file(2)
      end,
      desc = 'harpoon to file 2',
    },
    {
      '<leader>3',
      function()
        require('harpoon.ui').nav_file(3)
      end,
      desc = 'harpoon to file 3',
    },
    {
      '<leader>4',
      function()
        require('harpoon.ui').nav_file(4)
      end,
      desc = 'harpoon to file 4',
    },
    {
      '<leader>5',
      function()
        require('harpoon.ui').nav_file(5)
      end,
      desc = 'harpoon to file 5',
    },
  },
}
