local sel = "#0A1A30"
return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			themable = true,
			indicator = { style = "icon" },
			tab_size = 22,
			offsets = {
				{
					filetype = "neo-tree",
					text = "File Explorer",
					highlight = "Directory",
					text_align = "left",
				},
				{
					filetype = "snacks_layout_box",
				},
			},
		},
    -- highlights = require("catppuccin.special.bufferline").get_theme({
    --   custom = {
    --     mocha = {
    --       buffer_selected = { bg = sel, fg = "#ffffff", bold = true },
    --       close_button_selected = { bg = sel },
    --     }
    --   }
    -- }),
	},
}
