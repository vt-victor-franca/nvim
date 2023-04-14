local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fw', builtin.grep_string, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
require('telescope').load_extension('fzf')

