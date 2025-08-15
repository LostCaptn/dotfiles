return {
  'nvim-java/nvim-java',
  ft = 'java',
  dependencies = {
    'nvim-java/lua-async-await',
    'nvim-java/nvim-java-core',
    'nvim-java/nvim-java-test',
    'nvim-java/nvim-java-dap',
    'nvim-java/nvim-java-refactor',
    'MunifTanjim/nui.nvim',
    'mfussenegger/nvim-dap',
    'williamboman/mason.nvim',
  },
  config = function()
    require('java').setup()
    require('lspconfig').jdtls.setup {}
  end,
}
