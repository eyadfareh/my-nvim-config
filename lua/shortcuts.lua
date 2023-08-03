local function openTelescope ()
  vim.cmd("Telescope find_files")
end
vim.keymap.set('n', '<Space>', "<Nop>")
vim.g.mapleader = " "
vim.keymap.set('n', '<leader><leader>', openTelescope)
vim.keymap.set('n', '<leader>n', function() vim.cmd("bnext") end)
vim.keymap.set('n', '<leader>p', function() vim.cmd("bprevious") end)
