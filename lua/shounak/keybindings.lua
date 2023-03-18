vim.g.mapleader = ' '

local builtin = require('telescope.builtin')

function map(m, k, v)
	vim.keymap.set(m, k, v, {silent = true})
end

map('n', '<C-b>', vim.cmd.Ex)

map('i', 'jk', '<Esc>')
map('n', '<C-s>', ':w<CR>')
map('n', '<C-q>', ':q<CR>')

map('n', '<leader><leader>', ':so<CR>')

-- Telescope keybindings
map('n', '<leader>ff', builtin.find_files, {})
map('n', '<leader>fg', builtin.live_grep, {})
map('n', '<leader>fb', builtin.buffers, {})
map('n', '<leader>fh', builtin.help_tags, {})
