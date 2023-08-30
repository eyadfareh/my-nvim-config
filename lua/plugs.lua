return require('packer').startup(function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'
  -- themes
  use {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
  }
  use 'folke/tokyonight.nvim'
  use 'liuchengxu/space-vim-dark'
  use 'sts10/vim-pink-moon'
  use 'rigellute/shades-of-purple.vim'

  -- telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'

  -- syntax highlighting
  use 'sheerun/vim-polyglot'

  -- 6502 syntax highlighting
  use 'maxbane/vim-asm_ca65'
  -- to respect camelCase and snake_case
  use 'chaoren/vim-wordmotion'

	-- terminal
	use {"akinsho/toggleterm.nvim", tag = '*'}
  -- multiple cursors
  use 'mg979/vim-visual-multi'

  -- indentation
  use "lukas-reineke/indent-blankline.nvim"

  -- a file browser inside telescope
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- html auto close and auto rename tags
  use 'windwp/nvim-ts-autotag'

  -- git integration
  use {
    "NeogitOrg/neogit",
    requires = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
    },
  }
  -- Haskell
	use 'ndmitchell/ghcid'
  use {
    'mrcjkb/haskell-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim', -- Optional
    },
    branch = '2.x.x', -- Recommended
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  }
  -- HTTP rest client
  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        -- Open request results in a horizontal split
        result_split_horizontal = false,
        -- Keep the http file buffer above|left when split horizontal|vertical
        result_split_in_place = false,
        -- Skip SSL verification, useful for unknown certificates
        skip_ssl_verification = false,
        -- Encode URL before making request
        encode_url = true,
        -- Highlight request on run
        highlight = {
          enabled = true,
          timeout = 150,
        },
        result = {
          -- toggle showing URL, HTTP info, headers at top the of result window
          show_url = true,
          -- show the generated curl command in case you want to launch
          -- the same request via the terminal (can be verbose)
          show_curl_command = false,
          show_http_info = true,
          show_headers = true,
          -- executables or functions for formatting response body [optional]
          -- set them to false if you want to disable them
          formatters = {
            json = "jq",
            html = function(body)
              return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
            end
          },
        },
        -- Jump to request line on run
        jump_to_request = false,
        env_file = '.env',
        custom_dynamic_variables = {},
        yank_dry_run = true,
      })
    end
  }


  -- lsp
   use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
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
  }

  -- displays possible keybindings of the command
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- use 'romgrk/barbar.nvim'

  -- file tree
  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  -- an interactive theorem proving interface for coq
  use 'whonore/Coqtail'

  -- go support
  use {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    run = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  }

  -- tree-sitter
  use 'nvim-treesitter/nvim-treesitter'
  -- tree-sitter-context
  use {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies= {
      "nvim-treesitter/nvim-treesitter"
    }
  }

  -- debugger
  -- use 'puremourning/vimspector'

  -- statusline
  use {
    'nvim-lualine/lualine.nvim',
    dependencies= {
      'nvim-tree/nvim-web-devicons'
    }
  }


end)
