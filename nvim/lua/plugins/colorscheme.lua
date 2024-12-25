return {
	{
		"catppuccin/nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})

			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = {},
	},
}
