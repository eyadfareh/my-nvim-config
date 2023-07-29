local function coq_next()
	vim.cmd("CoqNext")	
end
local function coq_prev()
	vim.cmd("CoqUndo")
end
vim.keymap.set('i', '<C-Space>', coq_next)
vim.keymap.set('i', '<C-Down>', coq_next)
vim.keymap.set('i', '<C-Up>', coq_prev)
