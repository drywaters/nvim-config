return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-jest',
    'nvim-neotest/neotest-go',
  },
  config = function()
    require('neotest').setup {

      adapters = {
        require 'neotest-jest' {
          jestCommand = 'npm test --',
          jestConfigFile = 'jest.config.ts',
          env = { CI = true },
          cwd = function(path)
            return vim.fn.getcwd()
          end,
        },
        require 'neotest-go',
      },
    }

    vim.keymap.set('n', '<leader>tr', require('neotest').run.run, { desc = '[r]un: Tests' })
    vim.keymap.set('n', '<leader>tS', require('neotest').run.stop, { desc = '[S]top: Tests' })
    vim.keymap.set('n', '<leader>td', function()
      require('neotest').run.run { strategy = 'dap' }
    end, { desc = '[d]ebug: Tests' })
    vim.keymap.set('n', '<leader>ts', function()
      require('neotest').summary.toggle()
    end, { desc = '[s]ummary: Tests Toggle' })
    vim.keymap.set('n', '<leader>to', function()
      require('neotest').output.open { enter = true }
    end, { desc = '[o]utput: Tests Toggle' })
    vim.keymap.set('n', '<leader>tw', function()
      require('neotest').watch.toggle()
    end, { desc = '[w]atch: Tests' })
  end,
}
