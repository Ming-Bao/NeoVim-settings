return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 100,
	opts = {},
	require("tokyonight").setup({
		on_highlights = function(hl, color)
			hl.TelescopeNormal = {
				bg = color.bg_dark,
				fg = color.fg_dark,
			}
		end,

		on_colors = function(colors)
			colors.fg = colors.red
		end,
	}),
}
