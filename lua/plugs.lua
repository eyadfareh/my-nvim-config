local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

  -- telescope
  'nvim-telescope/telescope.nvim',
  'nvim-lua/plenary.nvim',

  -- syntax highlighting
  'sheerun/vim-polyglot',

  -- comment/uncomment automatically
  'numToStr/Comment.nvim',

  -- to respect camelCase and snake_case
  'chaoren/vim-wordmotion',

  -- multiple cursors
  'mg979/vim-visual-multi',

  -- a file browser inside telescope
  'nvim-telescope/telescope-file-browser.nvim',

  -- view trailing whitespaces
  'ntpeters/vim-better-whitespace',

  -- lsp
   {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  },

  -- displays possible keybindings of the command
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  -- my own plugin
  { dir= '~/projects/scholar.nvim'},

  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },

  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  -- an interactive theorem proving interface for coq
  'whonore/Coqtail',

  -- go support
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },

  -- tree-sitter-context
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies= {
      "nvim-treesitter/nvim-treesitter"
    }
  },

  -- debugger
  'puremourning/vimspector',

  -- statusline
  {
    'nvim-lualine/lualine.nvim',
    dependencies= {
      'nvim-tree/nvim-web-devicons'
    }
  },


  -- theme
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    config = function ()
      vim.cmd("colorscheme onedark")
    end
  },
})
