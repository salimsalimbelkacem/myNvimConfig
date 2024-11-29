return {
    "sho-87/kanagawa-paper.nvim",
    config = function ()
        require("kanagawa-paper").setup({
            transparent_mode = true,
        })
        vim.cmd.colorscheme "kanagawa-paper"
    end
}
