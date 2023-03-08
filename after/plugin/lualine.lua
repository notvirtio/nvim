local function icon()
    return " "
end

require("lualine").setup {
    sections = {
        lualine_a = { icon, "mode" }
    }
}
