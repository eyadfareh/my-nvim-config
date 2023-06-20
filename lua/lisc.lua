local lsp = require('lsp-zero').preset("recommended")
require("mason").setup()

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<Enter>"] = cmp.mapping.confirm({select = true}),
})
lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})
lsp.setup()
