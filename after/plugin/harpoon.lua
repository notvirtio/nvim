local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local set = vim.keymap.set

set("n", "<C-a>", function() mark.add_file() end)
set("n", "<C-s>", function() ui.toggle_quick_menu() end)
set("n", "<C-1>", function() ui.nav_file(1) end)
set("n", "<C-2>", function() ui.nav_file(2) end)
set("n", "<C-3>", function() ui.nav_file(3) end)
set("n", "<C-4>", function() ui.nav_file(4) end)
