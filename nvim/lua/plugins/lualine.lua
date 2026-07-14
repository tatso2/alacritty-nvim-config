return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		-- local citylife = require("citylife")
    local vscode_blue = "#007ACC"
    local white = "#ffffff"
    local black = "#1E1E1E"

    local function mode(accent, text)
      return {
        a = { fg = text, bg = accent, gui = "bold" },
        b = { fg = white, bg = vscode_blue },
        c = { fg = white, bg = vscode_blue },
      }
    end

		lualine.setup({
			options = {
        theme = {
          normal = mode("#0E639C", white),
          insert = mode("#3AAABA", white),
          visual = mode("#C586C0", white),
          replace = mode("#F44747", white),
          command = mode("#DCDCAA", black),
          inactive = mode("#0E639C", white),
        },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {
					{ "filename", file_status = false, path = 4 },
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e68" },
					},
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_y = { "location" },
				lualine_z = {},
			},
			extensions = {
				"aerial",
				"lazy",
				"mason",
				"neo-tree",
				"trouble",
				"toggleterm",
			},
		})
	end,
}
