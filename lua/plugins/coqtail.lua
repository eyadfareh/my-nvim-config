local function coq_next()
	vim.cmd("CoqNext")
	vim.cmd("set timeoutlen=25")
end
local function coq_prev()
	vim.cmd("CoqUndo")
end
vim.keymap.set('i', '<C-Down>', coq_next)
vim.keymap.set('i', '<C-Up>', coq_prev)

