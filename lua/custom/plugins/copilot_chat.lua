return {
  'CopilotC-Nvim/CopilotChat.nvim',
  branch = 'canary',
  dependencies = {
    { 'github/copilot.vim' },
    { 'nvim-lua/plenary.nvim' },
  },
  cmd = {
    'CopilotChat',
    'CopilotChatToggle',
    'CopilotChatStop',
    'CopilotChatExplain',
  },
  enabled = function()
    local env_value = vim.env.COPILOT_ENABLED and vim.env.COPILOT_ENABLED:lower()
    local env_on = env_value == '1' or env_value == 'true'

    if vim.g.enable_copilot_chat == false or vim.g.enable_copilot == false then
      return false
    end

    if not env_on then
      return false
    end
    return true
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
