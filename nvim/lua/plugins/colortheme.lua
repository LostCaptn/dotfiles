return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('tokyonight').setup {
      -- use the night style
      style = 'night',
      transparent = true,
    }
    vim.cmd [[colorscheme tokyonight]]
  end,
}
