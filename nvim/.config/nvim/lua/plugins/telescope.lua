return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local actions = require('telescope.actions')
        require('telescope').setup({
            defaults = {
                mappings = {
                    i = {
                        ["q"] = actions.close,
                    },
                    n = {
                        ["q"] = actions.close,
                    },
                },
            },
        })

        local builtin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>t', builtin.find_files, {})
    end
}
