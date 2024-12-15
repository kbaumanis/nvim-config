-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- colourscheme
	use 'shaunsingh/nord.nvim'

	-- treesitter for better syntax highlighting
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- small file jumping tool to set a limited number of favourites and not have to use buffers
	use('theprimeagen/harpoon')

	-- git integration
	use('tpope/vim-fugitive')

	-- LSP stuff
	use('neovim/nvim-lspconfig')
	use('hrsh7th/nvim-cmp')
	use('hrsh7th/cmp-nvim-lsp')
	-- use('williamboman/mason.nvim')
	-- use('williamboman/mason-lspconfig.nvim')
end)
