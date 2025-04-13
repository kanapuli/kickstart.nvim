T = function()
  vim.cmd 'split'
  vim.cmd 'resize 15'
  vim.cmd 'terminal'
  vim.cmd 'startinsert'
end

vim.keymap.set('n', '<leader>tt', ':lua T()<CR>', { desc = 'Open terminal in split' })
