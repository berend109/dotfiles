-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- use {
    --	'nvim-telescope/telescope.nvim', tag = '0.1.0',
    --	-- or                            , branch = '0.1.x',
    --	requires = { {'nvim-lua/plenary.nvim'} }
    -- }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('theprimeagen/harpoon')
	use ('mbbill/undotree')
	use ('tpope/vim-fugitive')

	-- use {
	-- 	'VonHeikemen/lsp-zero.nvim',
	-- 	branch = 'v1.x',
	-- 	requires = {
	-- 		-- LSP Support
	-- 		{'neovim/nvim-lspconfig'},
	-- 		{'williamboman/mason.nvim'},
	-- 		{'williamboman/mason-lspconfig.nvim'},

	-- 		-- Autocompletion
	-- 		{'hrsh7th/nvim-cmp'},
	-- 		{'hrsh7th/cmp-buffer'},
	-- 		{'hrsh7th/cmp-path'},
	-- 		{'saadparwaiz1/cmp_luasnip'},
	-- 		{'hrsh7th/cmp-nvim-lsp'},
	-- 		{'hrsh7th/cmp-nvim-lua'},

	-- 		-- Snippets
	-- 		{'L3MON4D3/LuaSnip'},
	-- 		{'rafamadriz/friendly-snippets'},
	-- 	}
	-- }

	use {
		'VonHeikemen/lsp-zero.nvim',
        -- change to 3.x from 2.x
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'},
            {'hrsh7th/vim-vsnip'},
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
    -- Debugging
    use {
        'mfussenegger/nvim-dap',
        requires = {
            'mfussenegger/nvim-dap-python',
            'theHamsta/nvim-dap-virtual-text',
            'nvim-telescope/telescope-dap.nvim',
        }
    }
end)
