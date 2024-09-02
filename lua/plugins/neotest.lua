-- TODO: configure this correctly for Go?
return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-go',
  },
  config = function()
    -- get neotest namespace (api call creates or returns namespace)
    local neotest_ns = vim.api.nvim_create_namespace 'neotest'
    vim.diagnostic.config({
      virtual_text = {
        format = function(diagnostic)
          local message = diagnostic.message:gsub('\n', ' '):gsub('\t', ' '):gsub('%s+', ' '):gsub('^%s+', '')
          return message
        end,
      },
    }, neotest_ns)
    require('neotest').setup {
      -- your neotest config here
      adapters = {
        require 'neotest-go',
      },
    }
      -- stylua: ignore
      vim.keymap.set('n', '<leader>xt', function () require('neotest').run.run() end, { desc = 'E[x]ecute [T]est at Cursor' })
      -- stylua: ignore
      vim.keymap.set('n', '<leader>xf', function () require('neotest').run.run() end, { desc = 'E[x]ecute [F]ile Tests' })
      -- stylua: ignore
      vim.keymap.set('n', '<leader>xo', function () require('neotest').output.open({ enter = true }) end, { desc = 'E[x]ecuted Test [O]utput' })
  end,
}
