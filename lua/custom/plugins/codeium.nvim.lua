return {
  'Exafunction/windsurf.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('codeium').setup {
      virtual_text = {
        enabled = true,
        virtual_text_priority = 1,
      },
    }
  end,
}
