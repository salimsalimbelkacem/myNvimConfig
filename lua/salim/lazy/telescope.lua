return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = {'nvim-lua/plenary.nvim'},

        config = function()
            vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, {})
            vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags,  {})
            vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep,  {})
            vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers,    {})

            require('telescope').setup({})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function ()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown { }
                    }
                },
                ft = 'mason'
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
