require 'core.options'
require 'core.keymaps'
vim.opt.termguicolors = true
vim.opt.conceallevel = 1
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  {
    require 'plugins.neotree',
    require 'plugins.colortheme',
    require 'plugins.lualine',
    require 'plugins.bufferline',
    require 'plugins.treesitter',
    require 'plugins.telescope',
    require 'plugins.nvim-java',
    require 'plugins.lsp',
    require 'plugins.autocompletion',
    require 'plugins.none-ls',
    require 'plugins.debugger',
    require 'plugins.gitsigns',
    require 'plugins.indent-blankline',
    require 'plugins.misc',
    require 'plugins.code-runner',
    require 'plugins.snacks',
    require 'plugins.obsidian',
    require 'plugins.render-markdown',
    require 'plugins.noice',
  },
}
require('lspconfig').harper_ls.setup {}
config = function()
  require('plugins.obsidian').setup {
    ui = { enable = false },
  }
end
