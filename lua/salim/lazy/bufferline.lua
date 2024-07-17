return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local bufferline = require("bufferline")
        vim.keymap.set("n", "<M-&>", function() bufferline.go_to( 1, true) end, {})
        vim.keymap.set("n", "<M-é>", function() bufferline.go_to( 2, true) end, {})
        vim.keymap.set("n", '<M-">', function() bufferline.go_to( 3, true) end, {})
        vim.keymap.set("n", "<M-'>", function() bufferline.go_to( 4, true) end, {})
        vim.keymap.set("n", "<M-(>", function() bufferline.go_to( 5, true) end, {})
        vim.keymap.set("n", "<M-->", function() bufferline.go_to( 6, true) end, {})
        vim.keymap.set("n", "<M-è>", function() bufferline.go_to( 7, true) end, {})
        vim.keymap.set("n", "<M-_>", function() bufferline.go_to( 8, true) end, {})
        vim.keymap.set("n", "<M-ç>", function() bufferline.go_to( 9, true) end, {})
        vim.keymap.set("n", "<M-à>", function() bufferline.go_to(10, true) end, {})

        vim.api.nvim_set_keymap('n', '<M-Tab>',     '<cmd>BufferLineCycleNext<CR>',   {})
        vim.api.nvim_set_keymap('n', '<M-S-Tab>',   '<cmd>BufferLineCyclePrev<CR>',   {})

        vim.keymap.set("i", "<M-&>", function() bufferline.go_to( 1, true) end, {})
        vim.keymap.set("i", "<M-é>", function() bufferline.go_to( 2, true) end, {})
        vim.keymap.set("i", '<M-">', function() bufferline.go_to( 3, true) end, {})
        vim.keymap.set("i", "<M-'>", function() bufferline.go_to( 4, true) end, {})
        vim.keymap.set("i", "<M-(>", function() bufferline.go_to( 5, true) end, {})
        vim.keymap.set("i", "<M-->", function() bufferline.go_to( 6, true) end, {})
        vim.keymap.set("i", "<M-è>", function() bufferline.go_to( 7, true) end, {})
        vim.keymap.set("i", "<M-_>", function() bufferline.go_to( 8, true) end, {})
        vim.keymap.set("i", "<M-ç>", function() bufferline.go_to( 9, true) end, {})
        vim.keymap.set("i", "<M-à>", function() bufferline.go_to(10, true) end, {})

        vim.api.nvim_set_keymap('i', '<M-Tab>',     '<cmd>BufferLineCycleNext<CR>',   {})
        vim.api.nvim_set_keymap('i', '<M-S-Tab>',   '<cmd>BufferLineCyclePrev<CR>',   {})

        vim.api.nvim_set_keymap('n', '<leader>bcc', '<cmd>BufferLineCloseOthers<CR>', {})
        vim.api.nvim_set_keymap('n', '<leader>bch', '<cmd>BufferLineCloseLeft<CR>',   {})
        vim.api.nvim_set_keymap('n', '<leader>bcl', '<cmd>BufferLineCloseRight<CR>',  {})

        bufferline.setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Workspace",
                        text_align = "center",
                        separator = false
                    }
                },
                numbers = "ordinal",
                indicator = {style = "none"},
                diagnostics = "nvim_lsp",
                -- separator_style = "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
                -- separator_style = "slant",
                separator_style = {'', ''},
                hover = {enabled = false,},
                close_command = nil,
                show_buffer_close_icons = false,
                show_close_icon = false,
            },
        })
    end
}
