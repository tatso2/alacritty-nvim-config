return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
  ---@type snacks.Config
	opts = {
		-- TODO: WIP
		dashboard = {
			width = 60,
			sections = {
				{ section = "keys", gap = 1, padding = 1 },
				{ section = "startup" },
			},
		},
		indent = {
			enabled = true,
			animate = { enabled = false },
		},
		terminal = { enabled = false },
		words = { enabled = false },
		bigfile = { enabled = false },
		explorer = { enabled = false },
		input = { enabled = false },
		notifier = { enabled = false },
		picker = { enabled = false },
		scroll = { enabled = false },
		statuscolumn = { enabled = false },
	},
}
