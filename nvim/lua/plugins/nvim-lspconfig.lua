return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		-- With borders but no underline
		vim.diagnostic.config({
			underline = false,
			virtual_lines = { current_line = true },
			float = { border = "rounded" },
		})

		-- Add borders around LSP messages
    vim.o.winborder = "single"
	end,
}
