vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require("nvim-tree").setup {
    sort_by = "case_sensetive"
}

vim.keymap.set("n", "<leader>v", function() vim.cmd("NvimTreeToggle") end)
