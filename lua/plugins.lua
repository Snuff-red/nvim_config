local packer = require('packer')

packer.startup({
	-- plugins_list
	function(use)
		-- Packer
		use 'wbthomason/packer.nvim'

		-- ColorScheme
		-- use 'EdenEast/nightfox.nvim'
		use 'navarasu/onedark.nvim'

		-- FileTree
		use 'nvim-tree/nvim-tree.lua'
		use 'nvim-tree/nvim-web-devicons'

		-- Project
		use 'ahmedkhalf/project.nvim'

		-- line
		use 'nvim-lualine/lualine.nvim'
		use 'arkav/lualine-lsp-progress'
		use 'akinsho/bufferline.nvim'
		use 'moll/vim-bbye'

		-- telescope
		use 'nvim-telescope/telescope.nvim'
		use 'nvim-lua/plenary.nvim'
		use 'LinArcX/telescope-env.nvim'
		use 'alex-laycalvert/telescope-dotfiles.nvim'
		use 'nvim-telescope/telescope-file-browser.nvim'
		use 'nvim-telescope/telescope-project.nvim'

		-- dashboard
		use 'glepnir/dashboard-nvim'

		-- nvim-treesitter
		use 'nvim-treesitter/nvim-treesitter'

		-- nvim-lsp
		use 'neovim/nvim-lspconfig'
		use 'williamboman/mason.nvim'
		use 'williamboman/mason-lspconfig.nvim'
		use 'glepnir/lspsaga.nvim'

		-- nvim-lsp-ui
		use 'onsails/lspkind.nvim'
		use 'lukas-reineke/indent-blankline.nvim'

		-- nvim-cmp
		use 'hrsh7th/nvim-cmp'
		-- snippet 引擎
		use 'hrsh7th/vim-vsnip'
		-- 补全源
		use 'hrsh7th/cmp-vsnip'
		use 'hrsh7th/cmp-nvim-lsp'
		use 'hrsh7th/cmp-buffer'
		use 'hrsh7th/cmp-path'
		use 'hrsh7th/cmp-cmdline'
		use 'petertriho/cmp-git'

		-- 常见编程语言代码段
		use 'rafamadriz/friendly-snippets'

		-- pairs
		use 'windwp/nvim-autopairs'

		-- null-ls
		use 'jose-elias-alvarez/null-ls.nvim'

		use 'lewis6991/gitsigns.nvim'
		use 'ThePrimeagen/refactoring.nvim'

		--nvim-dap
		use 'mfussenegger/nvim-dap'
		use 'theHamsta/nvim-dap-virtual-text'
		use 'rcarriga/nvim-dap-ui'
		use 'ravenxrz/DAPInstall.nvim'


		--comment
		use 'numToStr/Comment.nvim'

		--move
		use 'phaazon/hop.nvim'

	end,

	-- config
	-- float_window
	config = { display = { open_fn = require('packer.util').float } }
})

-- auto_PackerSync
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])
