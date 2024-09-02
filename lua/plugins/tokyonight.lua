-- Colorscheme
--
---@class tokyonight.Config
---@field on_colors fun(colors: tokyonight.ColorScheme)
---@field on_highlights fun(highlights: tokyonight.Highlights, colors: ColorScheme)
return {
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'folke/tokyonight.nvim',
  priority = 1000, -- Load this first

  -- TODO: not working??
  -- transparent = true,
  -- on_colors = function(colors)
  --   colors.bg = colors.none
  -- end,

  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'tokyonight-night'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'

    -- vim.cmd.hi 'Normal guibg=none'
    -- vim.cmd.hi 'NormalFloat guibg=none'
    -- vim.cmd.hi 'FloatBoarder guibg=none'
    -- vim.cmd.hi 'Pmenu guibg=none'
    -- vim.cmd.hi 'SignColumn guibg=none'

    local _hl_bg = 'none'
    vim.api.nvim_set_hl(0, 'Normal', { bg = _hl_bg })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = _hl_bg })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = _hl_bg })
    vim.api.nvim_set_hl(0, 'Pmenu', { bg = _hl_bg })
    vim.api.nvim_set_hl(0, 'SignColumn', { fg = 'none', bg = _hl_bg })
  end,
}
