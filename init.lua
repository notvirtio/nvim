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

if vim.g.neovide then
    vim.opt.guifont = { "Iosevka Nerd Font:h20" }
    vim.g.neovide_hide_mouse_when_typing = true

    vim.g.neovide_cursor_animation_length = 0.1
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    vim.g.neovide_cursor_vfx_particle_density = 100
end

vim.cmd("set cb=unnamedplus")

local keys = {
    ["<C-h>"] = ":winc h<CR>",
    ["<C-j>"] = ":winc j<CR>",
    ["<C-k>"] = ":winc k<CR>",
    ["<C-l>"] = ":winc l<CR>",
    ["<A-c>"] = ":BufferClose<CR>",
    ["<C-b>"] = ":vsplit term://cargo run<CR>",
    ["<A-Enter>"] = function() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end,
}

function setKeys(keys)
    for k, v in pairs(keys) do
        vim.keymap.set("n", k, v)
    end
end

setKeys(keys)
