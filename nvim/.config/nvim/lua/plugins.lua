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
    use 'folke/tokyonight.nvim'

    -- Syntax Highlighting
    use 'nvim-treesitter/nvim-treesitter'
    use 'p00f/nvim-ts-rainbow'

    -- Editing
    use 'windwp/nvim-ts-autotag' -- html tags
    use 'windwp/nvim-autopairs' -- brackets
    use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
                end
    }

    -- LSP
    use "neovim/nvim-lspconfig"
    use "glepnir/lspsaga.nvim"

    -- CMP
    use 'onsails/lspkind-nvim' -- pictograms
    use 'L3MON4D3/LuaSnip' -- snippets
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

end)

