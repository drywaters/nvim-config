return {
  'github/copilot.vim',
  event = 'InsertEnter',
  cmd = 'Copilot',
  init = function()
    vim.g.copilot_no_tab_map = true
  end,
  enabled = function()
    local env_value = vim.env.COPILOT_ENABLED and vim.env.COPILOT_ENABLED:lower()
    local env_on = env_value == '1' or env_value == 'true'

    if vim.g.enable_copilot == false then
      return false
    end

    if not env_on then
      return false
    end

    return true
  end,
  config = function()
    local function toggle()
      if vim.g.copilot_enabled == 0 then
        vim.cmd 'Copilot enable'
      else
        vim.cmd 'Copilot disable'
      end
    end

    vim.keymap.set('i', '<M-CR>', function()
      return vim.fn['copilot#Accept']('<CR>')
    end, { expr = true, replace_keycodes = false, desc = 'Copilot: Accept suggestion' })
    vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)', { desc = 'Copilot: Next suggestion' })
    vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)', { desc = 'Copilot: Previous suggestion' })
    vim.keymap.set('i', '<C-]>', '<Plug>(copilot-dismiss)', { desc = 'Copilot: Dismiss suggestion' })
    vim.keymap.set('n', '<leader>ct', toggle, { desc = 'Copilot: Toggle suggestions' })
  end,
}
