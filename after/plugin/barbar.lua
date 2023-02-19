require("bufferline").setup{
    animation = false,
    auto_hide = true,
    tabpages = true,
    closable =false,
    icons = true,

}

local keys = {
    ["<C-,>"] = ":BufferPrevious<CR>",
    ["<C-.>"] = ":BufferNext<CR>"
}

setKeys(keys)
