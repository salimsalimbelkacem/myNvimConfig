return{
    'nvim-lualine/lualine.nvim',
    config = function ()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                -- theme = 'catpuccin',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {},
                ignore_focus = {"NvimTree", "neo-tree", "help"},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                }
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {{
                    'filename',
                    file_status = true,
                    symbols = {
                        modified = ' ●',
                        readonly = ' ',
                        unnamed = 'guess',
                    }
                }},
                lualine_x = {
                    function () return os.date("%H:%M", os.time()) end,
                    'filetype'
                },
                lualine_y = { 'progress' },
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}
