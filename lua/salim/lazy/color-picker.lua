return {
    {
    "ziontee113/color-picker.nvim",
    config = function()
        local opts = { noremap = true, silent = true }

        vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
        vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
        require("color-picker").setup({
            -- ["icons"] = { "ﱢ", "" },
        })
    end,
    },
    {
        "norcalli/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    }
}
