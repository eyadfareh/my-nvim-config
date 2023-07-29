vim.cmd("let g:vimspector_enable_mappings = 'HUMAN'")
local function startDebugging ()
  vim.cmd("call vimspector#Launch()")
end
local function stepInto ()
  vim.cmd("call vimspector#StepInto()")
end
vim.keymap.set('n', '<leader>dr', function () vim.cmd("call vimspector#Launch()") end )
vim.keymap.set('n', '<leader>ds', function () vim.cmd("call vimspector#StepInto()") end )
vim.keymap.set('n', '<leader>dn', function () vim.cmd("call vimspector#StepOver()") end )
vim.keymap.set('n', '<leader>dc', function () vim.cmd("call vimspector#Continue()") end )
vim.keymap.set('n', '<leader>db', function () vim.cmd("call vimspector#ToggleBreakpoint()") end )
