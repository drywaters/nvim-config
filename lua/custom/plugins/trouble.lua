return {
  'folke/trouble.nvim',
  opts = {
    auto_preview = true,
    modes = {
      -- override the built-in diagnostics mode
      diagnostics = {
        preview = {
          type = 'split',
          relative = 'win',
          position = 'right',
          size = 0.5,
        },
      },
      qflist = {
        preview = {
          type = 'split',
          relative = 'win',
          position = 'right',
          size = 0.5,
        },
      },
      -- PREVIEW float pinnted to the top right of the editor
      --   preview = {
      --     type = 'float',
      --     relative = 'editor',
      --     border = 'rounded',
      --     title = 'Preview',
      --     title_pos = 'center',
      --     position = { 0, -2 },
      --     size = { width = 0.3, height = 0.3 },
      --     zindex = 200,
      --   },
      -- PREVIEW float split off window diagnostics
      -- preview = {
      --   type = 'split',
      --   relative = 'win',
      --   position = 'right',
      --   size = 0.5,
      -- },
      -- PREVIEW float pinned to the bottom-right of the editor
      -- preview = {
      --   type = 'float',
      --   relative = 'editor',
      --   border = 'rounded',
      --   -- row, col (negative col = from right edge)
      --   position = { 1, -2 },
      --   size = { width = 0.45, height = 0.40 },
      --   zindex = 200,
      -- },
    },
  },
  cmd = 'Trouble',
  keys = {
    {
      '<leader>xx',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = 'Diagnostics (Trouble)',
    },
    {
      '<leader>xX',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer Diagnostics (Trouble)',
    },
    {
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = 'Symbols (Trouble)',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = 'LSP Definitions / references / ... (Trouble)',
    },
    {
      '<leader>xq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = 'Quickfix List (Trouble)',
    },
  },
}
