return {
	"nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
	build = ":TSUpdate",
	dependencies = {"windwp/nvim-ts-autotag"},
	config = function()
		local treesitter = require("nvim-treesitter")

		treesitter.install(
      {
				"bash",
				"c",
				"cpp",
				"cmake",
				"dockerfile",
				"lua",
				"luadoc",
				"haskell",
				"html",
				"javascript",
				"json",
				"lua",
				"python",
				"rust",
				"typescript",
				"tsx",
				"yaml",
				"markdown",
				"markdown_inline",
				"toml",
				"yaml",
			}
		)
    vim.api.nvim_create_autocmd(
      "FileType",
      {
        callback = function(args)
        pcall(vim.treesitter.start, args.buf)
        end,
      }
    )
	end,
}
