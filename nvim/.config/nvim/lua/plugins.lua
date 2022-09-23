local status, packer = pcall(require, 'packer')
if (not status) then
	print('No packer!')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function (use)

		-- Managers
		use 'wbthomason/packer.nvim'

		-- UI
		use 'hoob3rt/lualine.nvim'
		use 'kyazdani42/nvim-web-devicons'
		use 'akinsho/nvim-bufferline.lua'

		-- Syntax Highlighting
		use 'nvim-treesitter/nvim-treesitter'

		-- Editing
		use 'windwp/nvim-ts-autotag' -- html tags
		use 'windwp/nvim-autopairs' -- brackets

		-- Fuzzy Finder
		use {
			'nvim-telescope/telescope.nvim',
			requires = { 
				{'nvim-lua/plenary.nvim'},
			 }
		}
		use "nvim-telescope/telescope-file-browser.nvim"

		-- LSPs
		use {
			'VonHeikemen/lsp-zero.nvim',
			requires = {
				-- LSP Support
				{'neovim/nvim-lspconfig'},
				{'williamboman/mason.nvim'},
				{'williamboman/mason-lspconfig.nvim'},
			
				-- Autocompletion
				{'hrsh7th/nvim-cmp'},
				{'hrsh7th/cmp-buffer'},
				{'hrsh7th/cmp-path'},
				{'hrsh7th/cmp-nvim-lsp'},
				{'hrsh7th/cmp-nvim-lua'},
				{'saadparwaiz1/cmp_luasnip'},
			
				-- Snippets
				{'L3MON4D3/LuaSnip'},
				{'rafamadriz/friendly-snippets'},
			}
		}
		use "glepnir/lspsaga.nvim"

end)

