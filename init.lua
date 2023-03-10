require("plugins")

require("impatient")

vim.opt.nu = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.g.mapleader = " "

if vim.g.neovide then
    vim.opt.guifont = { "Mononoki Nerd Font:h20" }
    vim.g.neovide_hide_mouse_when_typing = true

    vim.g.neovide_cursor_animation_length = 0.1
    vim.g.neovide_cursor_vfx_mode = "pixiedust"
    vim.g.neovide_cursor_vfx_particle_density = 100
end

vim.cmd("set cb=unnamedplus")

local keys = {
    ["<A-c>"] = ":BufferClose<CR>",
    ["<C-b>"] = ":TermExec dir=% cmd=make<CR>",
    ["<A-Enter>"] = function() vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen end,
}

function setKeys(keys)
    for k, v in pairs(keys) do
        vim.keymap.set("n", k, v)
    end
end

setKeys(keys)
