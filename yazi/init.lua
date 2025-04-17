require("full-border"):setup()

local tokyo_night_theme = require("yatline-tokyo-night"):setup("night")

require("yatline"):setup({
	theme = tokyo_night_theme,
	show_background = false,
	total = { icon = "󰮍", fg = "yellow" },
	succ = { icon = "", fg = "green" },
	fail = { icon = "", fg = "red" },
	found = { icon = "󰮕", fg = "blue" },
	processed = { icon = "󰐍", fg = "green" },

	header_line = {
		left = {
			section_a = {},
			section_b = {
				{ type = "line", custom = false, name = "tabs", params = { "left" } },
			},
			section_c = {},
		},
		right = {
			section_a = {

				{ type = "coloreds", custom = true, name = { { " 󰇥 ", "#3c3836" } } },
			},
			section_b = {},
			section_c = {
				{ type = "coloreds", custom = false, name = "task_states" },
			},
		},
	},

	status_line = {
		left = {
			section_a = {
				{ type = "string", custom = false, name = "tab_mode" },
			},
			section_b = {
				{ type = "string", custom = false, name = "hovered_size" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_path" },
				{ type = "coloreds", custom = false, name = "count", params = { true } },
			},
		},
		right = {
			section_a = {
				{ type = "string", custom = false, name = "cursor_position" },
			},
			section_b = {
				{ type = "string", custom = false, name = "cursor_percentage" },
			},
			section_c = {
				{ type = "string", custom = false, name = "hovered_file_extension", params = { true } },
				{ type = "coloreds", custom = false, name = "permissions" },
			},
		},
	},
})
