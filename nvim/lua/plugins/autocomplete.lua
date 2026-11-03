vim.pack.add({
	{ src = Gh("saghen/blink.cmp"), version = vim.version.range("*") },
	Gh("saghen/blink.lib"),
})

require("blink.cmp").setup({
	keymap = {
		preset = "default",
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

vim.pack.add({ Gh("windwp/nvim-autopairs") })
require("nvim-autopairs").setup({})
