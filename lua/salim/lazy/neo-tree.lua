return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
    },
    config = function ()
        vim.api.nvim_set_keymap('n', '<leader>o', '<cmd>Neotree action=focus<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>Neotree toggle<CR>',       { noremap = true, silent = true })

        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
            sort_case_insensitive = false,
            sort_function = nil,
                default_component_configs = {
                    container = {
                        enable_character_fade = true
                    },
                    indent = {
                        indent_size = 2,
                        padding = 1,
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        with_expanders = nil,
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        default = "",
                        highlight = "NeoTreeFileIcon"
                    },
                    modified = {
                        symbol = "●",
                        highlight = "NeoTreeModified",
                    },
                    name = {
                        trailing_slash = false,
                        use_git_status_colors = true,
                        highlight = "NeoTreeFileName",
                    },
                    git_status = {
                        symbols = {
                            added     = "",
                            modified  = "",
                            deleted   = "✖",
                            renamed   = "󰁕",
                            ignored   = "",
                            unstaged  = "󰄱",
                            staged    = "",
                            conflict  = "",
                        }
                    },
                    file_size = { enabled = false },
                    type = { enabled = false },
                    last_modified = { enabled = false },
                    created = { enabled = false },
                    symlink_target = { enabled = false,},
                },
                commands = {},
                window = {
                    position = "right",
                    width = 35,
                    mapping_options = {
                        noremap = true,
                        nowait = false,
                    },
                    mappings = {
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["l"] = "open",
                        ["<esc>"] = "cancel",
                        ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
                        ["S"] = "open_split",
                        ["s"] = "open_vsplit",
                        ["t"] = "open_tabnew",
                        ["w"] = "open_with_window_picker",
                        ["h"] = "close_node",
                        ["z"] = "close_all_nodes",
                        ["a"] = {
                            "add",
                            config = {
                                show_path = "none"
                            }
                        },
                        ["A"] = "add_directory",
                        ["d"] = "delete",
                        ["r"] = "rename",
                        ["y"] = "copy_to_clipboard",
                        ["x"] = "cut_to_clipboard",
                        ["p"] = "paste_from_clipboard",
                        ["c"] = "copy",
                        ["m"] = "move",
                        ["q"] = "close_window",
                        ["R"] = "refresh",
                        ["?"] = "show_help",
                        ["<"] = "prev_source",
                        [">"] = "next_source",
                        ["i"] = "show_file_details",
                    }
                        },
                        nesting_rules = {},
                        filesystem = {
                            filtered_items = {
                                visible = true,
                                hide_dotfiles = false,
                                hide_gitignored = false,
                                hide_hidden = false,
                            },
                            follow_current_file = {
                                enabled = true,
                                leave_dirs_open = true,
                            },
                            group_empty_dirs = false,
                            hijack_netrw_behavior = "open_default",
                            use_libuv_file_watcher = false,
                            window = {
                                mappings = {
                                    ["<bs>"] = "navigate_up",
                                    ["."] = "set_root",
                                    ["H"] = "toggle_hidden",
                                    ["/"] = "fuzzy_finder",
                                    ["D"] = "fuzzy_finder_directory",
                                    ["#"] = "fuzzy_sorter",
                                    -- ["D"] = "fuzzy_sorter_directory",
                                    ["f"] = "filter_on_submit",
                                    ["<c-x>"] = "clear_filter",
                                    ["[g"] = "prev_git_modified",
                                    ["]g"] = "next_git_modified",
                                    ["o"] = { "show_help", nowait=false, config = { title = "Order by", prefix_key = "o" }},
                                    ["oc"] = { "order_by_created", nowait = false },
                                    ["od"] = { "order_by_diagnostics", nowait = false },
                                    ["og"] = { "order_by_git_status", nowait = false },
                                    ["om"] = { "order_by_modified", nowait = false },
                                    ["on"] = { "order_by_name", nowait = false },
                                    ["os"] = { "order_by_size", nowait = false },
                                    ["ot"] = { "order_by_type", nowait = false },
                                    -- ['<key>'] = function(state) ... end,
                                },
                                fuzzy_finder_mappings = {
                                    ["<down>"] = "move_cursor_down",
                                    ["<C-n>"] = "move_cursor_down",
                                    ["<up>"] = "move_cursor_up",
                                    ["<C-p>"] = "move_cursor_up",
                                    -- ['<key>'] = function(state, scroll_padding) ... end,
                                },
                            },

                            commands = {}
                        },
                    })

                    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
                end
            }
