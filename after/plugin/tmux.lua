vim.g.tmux_navigator_no_mappings = 1

local keys = {
      ["<C-h>"] = ":<C-U>TmuxNavigateLeft<CR>",
      ["<C-j>"] = ":<C-U>TmuxNavigateDown<CR>",
      ["<C-k>"] = ":<C-U>TmuxNavigateUp<CR>",
      ["<C-l>"] = ":<C-U>TmuxNavigateRight<CR>",
}

setKeys(keys)
