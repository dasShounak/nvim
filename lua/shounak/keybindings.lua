vim.g.mapleader = ' '

local ts = require('telescope.builtin')

function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map('n', '<C-b>', vim.cmd.Ex)

map('i', 'jk', '<Esc>')
map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':q<CR>')

map('n', '<leader><leader>', ':so<CR>')

-- Telescope keybindings
map('n', '<leader>ff', ts.find_files, {})
map('n', '<leader>fg', ts.live_grep, {})
map('n', '<leader>fb', ts.buffers, {})
map('n', '<leader>fh', ts.help_tags, {})

-- Bufferline keybindings
map('n', '<Tab>', ':BufferLineCycleNext<CR>')
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>')
