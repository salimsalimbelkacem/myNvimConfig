return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim",
    },
    config = function ()

        require("neo-tree").setup({
            close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
            popup_border_style = "rounded",
            enable_git_status = true,
            enable_diagnostics = true,
            open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
            sort_case_insensitive = false, -- used when sorting files and directories in the tree
            sort_function = nil , -- use a custom function for sorting files and directories in the tree 
                default_component_configs = {
                    container = {
                        enable_character_fade = true
                    },
                    indent = {
                        indent_size = 2,
                        padding = 1, -- extra padding on left hand side
                        -- indent guides
                        with_markers = true,
                        indent_marker = "│",
                        last_indent_marker = "└",
                        highlight = "NeoTreeIndentMarker",
                        -- expander config, needed for nesting files
                        with_expanders = nil, -- if nil and file nesting is enabled, will enable expanders
                        expander_collapsed = "",
                        expander_expanded = "",
                        expander_highlight = "NeoTreeExpander",
                    },
                    icon = {
                        folder_closed = "",
                        folder_open = "",
                        -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
                        -- then these will never be used.
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
                            -- Change type
                            added     = "", -- or "✚", but this is redundant info if you use git_status_colors on the name
                            modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
                            deleted   = "✖",-- this can only be used in the git_status source
                            renamed   = "󰁕",-- this can only be used in the git_status source
                            -- Status type
                            ignored   = "",
                            unstaged  = "󰄱",
                            staged    = "",
                            conflict  = "",
                        }
                    },
                    -- If you don't want to use these columns, you can set `enabled = false` for each of them individually
                    file_size = { enabled = false },
                    type = { enabled = false },
                    last_modified = { enabled = false },
                    created = { enabled = false },
                    symlink_target = { enabled = false,},
                },
                -- A list of functions, each representing a global custom command
                -- that will be available in all sources (if not overridden in `opts[source_name].commands`)
                -- see `:h neo-tree-custom-commands-global`
                commands = {},
                window = {
                    position = "left",
                    width = 30,
                    mapping_options = {
                        noremap = true,
                        nowait = false,
                    },
                    mappings = {
                        ["<2-LeftMouse>"] = "open",
                        ["<cr>"] = "open",
                        ["l"] = "open",
                        ["<esc>"] = "cancel",
                        ["P"] = {
                            "toggle_preview",
                            config = {
                                use_float = true,
                                use_image_nvim = true
                            }
                        },
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
                                visible = true, -- when true, they will just be displayed differently than normal items
                                hide_dotfiles = false,
                                hide_gitignored = false,
                                hide_hidden = false, -- only works on Windows for hidden files/directories
                            },
                            follow_current_file = {
                                enabled = true, -- This will find and focus the file in the active buffer every time
                                --               -- the current file is changed while the tree is open.
                                leave_dirs_open = true, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                            },
                            group_empty_dirs = false, -- when true, empty folders will be grouped together
                            hijack_netrw_behavior = "open_default", -- netrw disabled, opening a directory opens neo-tree
                            -- in whatever position is specified in window.position
                            -- "open_current",  -- netrw disabled, opening a directory opens within the
                            -- window like netrw would, regardless of window.position
                            -- "disabled",    -- netrw left alone, neo-tree does not handle opening dirs
                            use_libuv_file_watcher = false, -- This will use the OS level file watchers to detect changes
                            -- instead of relying on nvim autocmd events.
                            window = {
                                mappings = {
                                    ["<bs>"] = "navigate_up",
                                    ["."] = "set_root",
                                    ["H"] = "toggle_hidden",
                                    ["/"] = "fuzzy_finder",
                                    ["D"] = "fuzzy_finder_directory",
                                    ["#"] = "fuzzy_sorter", -- fuzzy sorting using the fzy algorithm
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
                                fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
                                    ["<down>"] = "move_cursor_down",
                                    ["<C-n>"] = "move_cursor_down",
                                    ["<up>"] = "move_cursor_up",
                                    ["<C-p>"] = "move_cursor_up",
                                    -- ['<key>'] = function(state, scroll_padding) ... end,
                                },
                            },

                            commands = {} -- Add a custom command or override a global one using the same function name
                        },
                    })

                    vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
                end
            }
