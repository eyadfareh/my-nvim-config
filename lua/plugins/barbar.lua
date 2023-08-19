require'barbar'.setup {
  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = true,
  -- Set the filetypes which barbar will offset itself for
  sidebar_filetypes = {
    -- Use the default values: {event = 'BufWinLeave', text = nil}
    NvimTree = true,
    -- Or, specify the text used for the offset:
    undotree = {text = 'undotree'},
    -- Or, specify the event which the sidebar executes when leaving:
    ['neo-tree'] = {event = 'BufWipeout'},
  },
}
vim.cmd("cnoreabbrev cl BufferClose");
