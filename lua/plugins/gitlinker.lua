-- Easy copy git links with '<leader>gy'
return {
  'ruifm/gitlinker.nvim',
  commit = 'cc59f73',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('gitlinker').setup {
      -- mappings = nil
    }
  end,
}
