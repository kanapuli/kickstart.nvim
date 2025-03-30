return {
  'olimorris/codecompanion.nvim',
  config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {
    opts = {
      log_level = 'DEBUG',
    },
  },
}
