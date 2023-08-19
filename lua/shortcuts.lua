vim.g.mapleader = " "
vim.keymap.set('n', '<Space>', "<Nop>")
vim.keymap.set('n', '<leader>n', function() vim.cmd("BufferNext") end)
vim.keymap.set('n', '<leader>p', function() vim.cmd("BufferPrevious") end)
vim.cmd("cnoreabbrev cl BufferClose");
