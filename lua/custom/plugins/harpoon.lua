return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  keys = {
    { '<leader>ha', ':lua require("harpoon.mark").add_file()<CR>', desc = 'Add harpoon files', silent = true },
    { '<leader>hq', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', desc = 'Harpoon menu', silent = true },
    -- { '<leader>ht', ':lua require("harpoon.tmux").gotoTerminal(1) ()<CR>', desc = 'Harpoon go to terminal', silent = true },
    { '<C-n>', ':lua require("harpoon.ui").nav_next()<CR>', desc = 'Harpoon navigate to next file', silent = true },
    { '<C-p>', ':lua require("harpoon.ui").nav_prev()<CR>', desc = 'Harpoon navigate to prev file', silent = true },
  },
}
