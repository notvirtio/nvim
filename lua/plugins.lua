vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"

    use "neovim/nvim-lspconfig"
    use "mfussenegger/nvim-dap"
    use "lewis6991/impatient.nvim"
    use "sitiom/nvim-numbertoggle"
    use "nvim-treesitter/nvim-treesitter"
    use "ThePrimeagen/harpoon"
    use "kdheepak/lazygit.nvim"
    use "m4xshen/autoclose.nvim"
    use "nvim-lualine/lualine.nvim"
    use 'andweeb/presence.nvim'
    use "arcticicestudio/nord-vim"

    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = {
            { "nvim-lua/plenary.nvim" }
        }
    }

    use {
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons"
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },

            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
end)
