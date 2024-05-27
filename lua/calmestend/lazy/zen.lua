return {

	-- Lua
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				backdrop = 0.95,
				width = 120,
				height = 1
			},
			plugins = {
				options = {
					enabled = true,
					ruler = false, -- disables the ruler text in the cmd line area
					showcmd = false, -- disables the command in the last line of the screen
					laststatus = 0, -- turn off the statusline in zen mode
				},
				wezterm = {
					enable = true,
					font = "+4",
				},
			},
		},
	}
}
