require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
local function openTelescope ()
  vim.cmd("Telescope find_files")
end
local function openTelescopeGrep ()
  vim.cmd("Telescope live_grep")
end
local function openTelescopeFileBrowser()
  vim.cmd("Telescope file_browser")
end
require("telescope").load_extension "file_browser"
vim.keymap.set('n', '<leader>f', function() vim.cmd("BufferPrevious") end)
vim.keymap.set('n', '<leader><leader>', openTelescope)
vim.keymap.set('n', '<leader>fg', openTelescopeGrep)
vim.keymap.set('n', '<leader>fb', openTelescopeFileBrowser)
vim.keymap.set('n', '<leader>ff', function() vim.cmd("Telescope	buffers") end)
