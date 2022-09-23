local status, packer = pcall(require, 'packer')
if (not status) then
	print('No packer!')
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function (use)

		-- Managers
		use 'wbthomason/packer.nvim'
    use 'williamboman/mason.nvim' 
    use 'williamboman/mason-lspconfig.nvim' 

		-- UI
		use 'hoob3rt/lualine.nvim'
		use 'kyazdani42/nvim-web-devicons'
		use 'akinsho/nvim-bufferline.lua'

		-- Syntax Highlighting
		use 'nvim-treesitter/nvim-treesitter'

		-- Editing
		use 'windwp/nvim-ts-autotag' -- html tags
		use 'windwp/nvim-autopairs' -- brackets
    use {
				    'numToStr/Comment.nvim',
				    config = function()
								require('Comment').setup()
								end
    }

		-- Fuzzy Finder
		use {
			'nvim-telescope/telescope.nvim',
			requires = { 
				{'nvim-lua/plenary.nvim'},
			 }
		}
		use "nvim-telescope/telescope-file-browser.nvim"

		-- LSP
	  use "neovim/nvim-lspconfig"
    use "glepnir/lspsaga.nvim"

    -- CMP
    use 'onsails/lspkind-nvim' -- pictograms
    use 'L3MON4D3/LuaSnip' -- snippets
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'

end)

