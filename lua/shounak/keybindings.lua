-- Map leaer --
vim.g.mapleader = ' '

function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map('i', 'jk', '<Esc>')
map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':q<CR>')

map('i', '<C-h>', '<Left>')
map('i', '<C-j>', '<Down>')
map('i', '<C-k>', '<Up>')
map('i', '<C-l>', '<Right>')

map('n', '<leader><leader>', ':so<CR>')

-- Telescope --
local ts = require('telescope.builtin')

map('n', '<leader>ff', ts.find_files, {})
map('n', '<leader>fg', ts.live_grep, {})
map('n', '<leader>fb', ts.buffers, {})
map('n', '<leader>fh', ts.help_tags, {})

-- Bufferline --
map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')
map('n', '<leader>x', ':bdelete %<CR>')

-- NvimTree --
map('n', '<C-b>', ':NvimTreeToggle<CR>')
map('n', '<leader>e', ':NvimTreeFocus<CR>')

-- NVTerm --
local nvterm = require('nvterm.terminal')
local toggle_modes = {'n', 't'}

map(toggle_modes, '<A-h>', function() nvterm.toggle('horizontal') end)
map(toggle_modes, '<A-v>', function() nvterm.toggle('vertical') end)
map(toggle_modes, '<A-i>', function() nvterm.toggle('float') end)

-- UndoTree --
map('n', '<leader><F5>', ':UndotreeToggle<CR>')
map('n', '<leader><F6>', ':UndotreeFocus<CR>')
