-- Configuration for leap.nvim using LazyVim
-- This file should be placed in your LazyVim plugins directory
-- Typically: ~/.config/nvim/lua/plugins/leap.lua

return {
  {
    'ggandor/leap.nvim',
    dependencies = { 'tpope/vim-repeat' },
    config = function()
      local leap = require 'leap'

      -- Basic setup
      leap.setup {
        -- Default options
        case_sensitive = false, -- Whether searches are case-sensitive
        safe_labels = 'sfnut/SFNLHMUGTZ?', -- Safe characters for target labels (common)
        special_keys = {
          repeat_search = '<enter>', -- Repeat the last search
          next_target = '<enter>', -- Jump to the next target
          prev_target = '<tab>', -- Jump to the previous target
          next_group = '<space>', -- Jump to the next group
          prev_group = '<tab>', -- Jump to the previous group
          multi_accept = '<enter>', -- Accept multiple targets
          multi_revert = '<backspace>', -- Revert to the previous state
        },
        -- Highlight options
        highlight_unlabeled_phase_one_targets = false,
        highlight = {
          backdrop = false, -- Dim the screen during search
          target = true, -- Highlight targets
          label = true, -- Highlight labels
        },
        -- Labels appear on the...
        labels_after = true, -- ...right side of targets
      }

      -- Custom mappings
      -- 's' for search forward in normal and visual modes
      vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
      -- 'S' for search backward in normal and visual modes
      vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')

      -- Custom colors (uncomment to customize)
      -- vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
      -- vim.api.nvim_set_hl(0, 'LeapMatch', { fg = 'white', bold = true, nocombine = true })
      -- vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { fg = 'red', bold = true, nocombine = true })
      -- vim.api.nvim_set_hl(0, 'LeapLabelSecondary', { fg = 'blue', bold = true, nocombine = true })
    end,
    event = 'VeryLazy',
    -- If you want specific keymaps to trigger leap loading:
    -- keys = {
    --   { "s", mode = { "n", "x", "o" } },
    --   { "S", mode = { "n", "x", "o" } },
    --   { "gs", mode = { "n", "x", "o" } },
    -- },
  },

  -- Optional: add flit.nvim integration
  -- {
  --   "ggandor/flit.nvim",
  --   dependencies = { "ggandor/leap.nvim" },
  --   config = function()
  --     require("flit").setup {
  --       keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  --       labeled_modes = "nvo",
  --       multiline = true,
  --       opts = {}
  --     }
  --   end,
  -- },
}
