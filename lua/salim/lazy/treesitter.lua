return {
    "nvim-treesitter/nvim-treesitter",
    build =":TSUpdate",
    config = function ()
    vim.cmd [[
        autocmd BufRead,BufNewFile *.svelte TSEnable highlight
    ]]
    end

}
