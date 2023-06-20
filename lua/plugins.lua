
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
	use 'Julian/lean.nvim'
	use 'nvim-lua/plenary.nvim'
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
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
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	}
	use 'hrsh7th/cmp-buffer'
	use 'whonore/Coqtail'
	use 'hrsh7th/vim-vsnip'
	use 'andrewradev/switch.vim'
	use 'tomtom/tcomment_vim'
  use 'vim-airline/vim-airline'
  use 'joshdick/onedark.vim'
  use 'aquach/vim-http-client'
  use 'junegunn/fzf.vim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
  use 'alvan/vim-closetag'
  use 'mattn/emmet-vim'
  use 'ryanoasis/vim-devicons'
end)
