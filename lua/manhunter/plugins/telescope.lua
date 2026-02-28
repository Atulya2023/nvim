return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        builtin = require('telescope.builtin')
        vim.keymap.set("n", "<Leader>fd", builtin.find_files, {})
        vim.keymap.set("n", "<Leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<Leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<Leader>fh", builtin.help_tags, {})
        vim.keymap.set("n", "<Leader>fr", builtin.oldfiles, {})
    end
}
