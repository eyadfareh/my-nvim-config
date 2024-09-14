vim.g.mapleader = " "
print("Working")
vim.keymap.set('n', '<Space>', "<Nop>")
vim.keymap.set("n", '<leader>t', function() vim.cmd("Neotree toggle") end)
