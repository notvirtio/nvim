require("toggleterm").setup{
    size = function()
        return vim.o.columns * .4
    end,
    open_mapping = "<C-\\>",
    direction = "float"
}
