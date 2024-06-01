return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local bufferline = require("bufferline")
        vim.keymap.set("n", "<M-&>", function() bufferline.go_to(1, true) end, {})
        vim.keymap.set("n", "<M-é>", function() bufferline.go_to(2, true) end, {})
        vim.keymap.set("n", '<M-">', function() bufferline.go_to(3, true) end, {})
        vim.keymap.set("n", "<M-'>", function() bufferline.go_to(4, true) end, {})
        vim.keymap.set("n", "<M-(>", function() bufferline.go_to(5, true) end, {})
        vim.keymap.set("n", "<M-->", function() bufferline.go_to(6, true) end, {})
        vim.keymap.set("n", "<M-è>", function() bufferline.go_to(7, true) end, {})
        vim.keymap.set("n", "<M-_>", function() bufferline.go_to(8, true) end, {})
        vim.keymap.set("n", "<M-ç>", function() bufferline.go_to(9, true) end, {})
        vim.keymap.set("n", "<M-à>", function() bufferline.go_to(10, true) end, {})

        bufferline.setup({
            options = {
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "Workspace",
                        text_align = "center",
                        separator = true
                    }
                },
                numbers = "ordinal",
                indicator = {
                    style = "none"
                },
                diagnostics = "nvim_lsp",
                separator_style = {'', ''},
                hover = {
                    enabled = false,
                },
            },

            highlights = {
                fill = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                background = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                tab = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                tab_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                },
                tab_separator = {
                    fg = '#1e1e2e',
                    bg = '#1e1e2e',
                },
                tab_separator_selected = {
                    fg = '#292e42',
                    bg = '#292e42',
                    sp = '#292e42',
                },
                tab_close = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                close_button = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                close_button_visible = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                close_button_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                },
                buffer_visible = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                buffer_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                    bold = true,
                    italic = true,
                },
                numbers = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                numbers_visible = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                numbers_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                    bold = true,
                    italic = true,
                },
                diagnostic = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                diagnostic_visible = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                },
                diagnostic_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                    bold = true,
                    italic = true,
                },
                hint = {
                    fg = '#a6e3a1',
                    sp = '#a6e3a1',
                    bg = '#1e1e2e',
                },
                hint_visible = {
                    fg = '#a6e3a1',
                    bg = '#1e1e2e',
                },
                hint_selected = {
                    fg = '#a6e3a1',
                    bg = '#292e42',
                    sp = '#a6e3a1',
                    bold = true,
                    italic = true,
                },
                hint_diagnostic = {
                    fg = '#a6e3a1',
                    sp = '#a6e3a1',
                    bg = '#1e1e2e',
                },
                hint_diagnostic_visible = {
                    fg = '#a6e3a1',
                    bg = '#1e1e2e',
                },
                hint_diagnostic_selected = {
                    fg = '#a6e3a1',
                    bg = '#292e42',
                    sp = '#a6e3a1',
                    bold = true,
                    italic = true,
                },
                info = {
                    fg = '#89b4fa',
                    sp = '#89b4fa',
                    bg = '#1e1e2e',
                },
                info_visible = {
                    fg = '#89b4fa',
                    bg = '#1e1e2e',
                },
                info_selected = {
                    fg = '#89b4fa',
                    bg = '#292e42',
                    sp = '#89b4fa',
                    bold = true,
                    italic = true,
                },
                info_diagnostic = {
                    fg = '#89b4fa',
                    sp = '#89b4fa',
                    bg = '#1e1e2e',
                },
                info_diagnostic_visible = {
                    fg = '#89b4fa',
                    bg = '#1e1e2e',
                },
                info_diagnostic_selected = {
                    fg = '#89b4fa',
                    bg = '#292e42',
                    sp = '#89b4fa',
                    bold = true,
                    italic = true,
                },
                warning = {
                    fg = '#fab387',
                    sp = '#fab387',
                    bg = '#1e1e2e',
                },
                warning_visible = {
                    fg = '#fab387',
                    bg = '#1e1e2e',
                },
                warning_selected = {
                    fg = '#fab387',
                    bg = '#292e42',
                    sp = '#fab387',
                    bold = true,
                    italic = true,
                },
                warning_diagnostic = {
                    fg = '#fab387',
                    sp = '#fab387',
                    bg = '#1e1e2e',
                },
                warning_diagnostic_visible = {
                    fg = '#fab387',
                    bg = '#1e1e2e',
                },
                warning_diagnostic_selected = {
                    fg = '#fab387',
                    bg = '#292e42',
                    sp = '#fab387',
                    bold = true,
                    italic = true,
                },
                error = {
                    fg = '#f38ba8',
                    bg = '#1e1e2e',
                    sp = '#f38ba8',
                },
                error_visible = {
                    fg = '#f38ba8',
                    bg = '#1e1e2e',
                },
                error_selected = {
                    fg = '#f38ba8',
                    bg = '#292e42',
                    sp = '#f38ba8',
                    bold = true,
                    italic = true,
                },
                error_diagnostic = {
                    fg = '#f38ba8',
                    bg = '#1e1e2e',
                    sp = '#f38ba8',
                },
                error_diagnostic_visible = {
                    fg = '#f38ba8',
                    bg = '#1e1e2e',
                },
                error_diagnostic_selected = {
                    fg = '#f38ba8',
                    bg = '#292e42',
                    sp = '#f38ba8',
                    bold = true,
                    italic = true,
                },
                modified = {
                    fg = '#fab387',
                    bg = '#1e1e2e',
                },
                modified_visible = {
                    fg = '#fab387',
                    bg = '#1e1e2e',
                },
                modified_selected = {
                    fg = '#fab387',
                    bg = '#292e42',
                },
                duplicate_selected = {
                    fg = '#c6d0f5',
                    bg = '#292e42',
                    italic = true,
                },
                duplicate_visible = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                    italic = true,
                },
                duplicate = {
                    fg = '#c6d0f5',
                    bg = '#1e1e2e',
                    italic = true,
                },
                separator_selected = {
                    fg = '#1e1e2e',
                    bg = '#292e42',
                },
                separator_visible = {
                    fg = '#1e1e2e',
                    bg = '#1e1e2e',
                },
                separator = {
                    fg = '#1e1e2e',
                    bg = '#1e1e2e',
                },
                indicator_visible = {
                    fg = '#292e42',
                    bg = '#292e42',
                },
                indicator_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                },
                pick_selected = {
                    fg = '#f8f8f2',
                    bg = '#292e42',
                    bold = true,
                    italic = true,
                },
                pick_visible = {
                    fg = '#f8f8f2',
                    bg = '#1e1e2e',
                    bold = true,
                    italic = true,
                },
                pick = {
                    fg = '#f8f8f2',
                    bg = '#1e1e2e',
                    bold = true,
                    italic = true,
                },
                offset_separator = {
                    fg = '#1e1e2e',
                    bg = '#1e1e2e',
                },
                trunc_marker = {
                    fg = '#f8f8f2',
                    bg = '#1e1e2e',
                }
            }
        })
    end
}
