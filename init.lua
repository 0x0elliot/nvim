require("aditya.plugins-setup")
require("aditya.plugins.telescope")
require("aditya.plugins.nvim-tree")
require("aditya.plugins.treesitter")
require("aditya.plugins.comment")
-- require("aditya.plugins.nvim-cmp")
require("aditya.plugins.gitsigns")
require("aditya.core.options")
require("aditya.plugins.autopairs")
require("aditya.core.keymaps")
require("aditya.plugins.lualine")
require("aditya.core.colorscheme")
require("aditya.plugins.lsp.mason")
require("aditya.plugins.lsp.lspsaga")
require("aditya.plugins.lsp.lspconfig")
require("aditya.plugins.lsp.null-ls")

local nvim_lsp = require("lspconfig")
nvim_lsp.tsserver.setup({})

require("ayu").setup({
	mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	terminal = true, -- Set to `false` to let terminal manage its own colors.
	overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

-- have :ContextActivate and :ContextEnable by default
vim.cmd([[command! ContextActivate lua require('context').activate()]])
