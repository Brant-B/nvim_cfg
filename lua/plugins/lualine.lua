return{
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	options = {
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = " ", right = "" },
	},
	extensions = { "nvim-tree", "toggleterm" },
	sections = {
		lualine_a = {
			{
				"mode",
				icons_enabled = true,
			},
		},
		lualine_b = {
			{
				"filetype",
				colored = true,
				icon_only = true,
			},
			"filename",
		},
		lualine_c = {
			"branch",
			"diff",
		},
		lualine_x = {},

		lualine_y = {},

		lualine_z = {
			"progress",
		},
	},
}
