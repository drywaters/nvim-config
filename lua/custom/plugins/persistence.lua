return {
  'folke/persistence.nvim',
  event = 'BufReadPre',
  opts = {},
  keys = {
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Restore session',
    },
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Restore last session',
    },
    {
      '<leader>qS',
      function()
        require('persistence').select()
      end,
      desc = 'Select a session to restore',
    },
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = 'Stop session recording',
    },
  },
}
