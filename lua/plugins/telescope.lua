require("telescope").setup {
}
local function openTelescope ()
  vim.cmd("Telescope find_files")
end
local function openTelescopeGrep ()
  vim.cmd("Telescope live_grep")
end
vim.keymap.set('n', '<leader>f', function() vim.cmd("BufferPrevious") end)
vim.keymap.set('n', '<leader><leader>', openTelescope)
vim.keymap.set('n', '<leader>fg', openTelescopeGrep)
vim.keymap.set('n', '<leader>ff', function() vim.cmd("Telescope	buffers") end)
