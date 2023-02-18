require("plugins")

vim.opt.nu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.g.mapleader = " "

vim.cmd("set cb=unnamedplus")

local keys = {
    ["<C-h>"] = function() vim.cmd("winc h") end,
    ["<C-j>"] = function() vim.cmd("winc j") end,
    ["<C-k>"] = function() vim.cmd("winc k") end,
    ["<C-l>"] = function() vim.cmd("winc l") end,
}

for k, v in pairs(keys) do
    vim.keymap.set("n", k, v)
end
