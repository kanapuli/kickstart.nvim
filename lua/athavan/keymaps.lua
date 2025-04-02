-- Map cb to clear buffers
vim.keymap.set('n', '<leader>cb', '<cmd>bufdo bd<CR>', { desc = 'Close all buffers' })
-- Run :only to close other split windows
vim.keymap.set('n', '<leader>o', '<C-w>o', { desc = 'Close other windows' })
--  Remap C-s to save
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>')

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('i', '<C-h>', '<Esc><C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('i', '<C-l>', '<Esc><C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('i', '<C-j>', '<Esc><C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('i', '<C-k>', '<Esc><C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w><C-k>', { desc = 'Move focus to the upper window' })

-- always center search results
vim.keymap.set('n', 'n', 'nzz', { silent = true })
vim.keymap.set('n', 'N', 'Nzz', { silent = true })
vim.keymap.set('n', '*', '*zz', { silent = true })
vim.keymap.set('n', '#', '#zz', { silent = true })
vim.keymap.set('n', 'g*', 'g*zz', { silent = true })

-- "very magic" (less escaping needed) regexes by default
vim.keymap.set('n', '?', '?\\v')
vim.keymap.set('n', '/', '/\\v')
vim.keymap.set('c', '%s/', '%sm/')
