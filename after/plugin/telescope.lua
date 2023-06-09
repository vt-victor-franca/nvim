local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fw', builtin.grep_string, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
local telescope = require("telescope")
telescope.load_extension('fzf')
telescope.load_extension("git_worktree")
vim.keymap.set('n', '<leader>cw', telescope.extensions.git_worktree.create_git_worktree, {})
vim.keymap.set('n', '<leader>w', telescope.extensions.git_worktree.git_worktrees, {})
