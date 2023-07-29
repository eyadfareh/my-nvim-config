-- first install packer
-- https://github.com/wbthomason/packer.nvim

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

  
  -- an interactive theorem proving interface for coq
  'whonore/Coqtail',
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

  -- debugger
  'puremourning/vimspector',

  -- theme 
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    config = function ()
      vim.cmd("colorscheme onedark")
    end
  }
})
