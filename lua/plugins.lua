
vim.cmd [[packadd packer.nvim]]
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'preservim/nerdtree'
  use 'tpope/vim-fugitive'
  use 'mhinz/vim-signify'
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
