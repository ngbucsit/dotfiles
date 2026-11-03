vim.pack.add({
	{ src = Gh("nvim-neo-tree/neo-tree.nvim") },
	Gh("nvim-lua/plenary.nvim"),
	Gh("MunifTanjim/nui.nvim"),
	Gh("nvim-tree/nvim-web-devicons"),
})

require("neo-tree").setup({
	window = {
		position = "float",
	},
})

vim.keymap.set("n", "<leader>f", "<Cmd>Neotree toggle<CR>")
