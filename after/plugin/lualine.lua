local function arch()
    return " "
end

require("lualine").setup {
    sections = {
        lualine_a = { arch, "mode" }
    }
}
