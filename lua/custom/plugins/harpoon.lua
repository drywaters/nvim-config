return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>0', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Harpoon: Toggle quick menu' })

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = 'Harpoon: Add new file' })

    for i = 1, 9 do
      vim.keymap.set('n', string.format('<leader>%d', i), function()
        harpoon:list():select(i)
      end, { desc = string.format('Harpoon: Select file %d', i) })
    end
  end,
}
