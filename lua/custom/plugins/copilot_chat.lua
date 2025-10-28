return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'main',
  dependencies = {
    { 'github/copilot.vim' },
    { 'nvim-lua/plenary.nvim' },
  },
  event = 'VeryLazy',
  enabled = function()
    local env_value = vim.env.COPILOT_ENABLED and vim.env.COPILOT_ENABLED:lower()
    local env_on = env_value == '1' or env_value == 'true'

    return env_on
  end,
  opts = {
    window = {
      layout = 'float',
    },
  },
  config = function(_, opts)
    local chat = require 'CopilotChat'
    chat.setup(opts)

    vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChatToggle<cr>', { desc = 'CopilotChat: Toggle chat window' })
    vim.keymap.set('n', '<leader>cS', '<cmd>CopilotChatStop<cr>', { desc = 'CopilotChat: Stop active session' })
    vim.keymap.set({ 'n', 'v' }, '<leader>ce', '<cmd>CopilotChatExplain<cr>', { desc = 'CopilotChat: Explain code' })
  end,
}
