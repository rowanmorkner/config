return {
	{

		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = true,
		opt = {
			view = {
				mappings = {
					list = {
						{ key = "t", action = "tabnew" },
					},
				},
			},
		},
	},
}
