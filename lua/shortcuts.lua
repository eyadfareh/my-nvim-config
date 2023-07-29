local function openTelescope ()
  vim.cmd("Telescope find_files")
end
vim.keymap.set('n', '<Space>', "<Nop>")
vim.g.mapleader = " "
vim.keymap.set('n', '<leader><leader>', openTelescope)
