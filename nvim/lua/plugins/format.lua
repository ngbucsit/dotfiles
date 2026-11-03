vim.pack.add({ Gh("stevearc/conform.nvim") })

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff" },
	},
	format_on_save = {
		timeout = 500,
		lsp_format = "fallback",
	},
})
