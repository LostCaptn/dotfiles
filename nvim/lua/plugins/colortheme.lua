return {
  'folke/tokyonight.nvim',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require('tokyonight').setup {
      style = 'night',
      transparent = true,
    }

    vim.cmd [[colorscheme tokyonight]]

    local is_transparent = true

    function ToggleTransparency()
      if is_transparent then
        vim.cmd 'highlight Normal guibg=#1e1e2e'
        vim.cmd 'highlight NormalNC guibg=#1e1e2e'
      else
        vim.cmd 'highlight Normal ctermbg=none guibg=none'
        vim.cmd 'highlight NormalNC ctermbg=none guibg=none'
      end

      is_transparent = not is_transparent
    end

    vim.api.nvim_set_keymap('n', '<leader>tt', ':lua ToggleTransparency()<CR>', { noremap = true, silent = true })
  end,
}
