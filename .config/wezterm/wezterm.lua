local theme = require("theme")

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

config.enable_tab_bar = false

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 18
config.font = wezterm.font("Agave")
config.colors = theme

config.keys = {
	{
		key = "|",
		mods = "SUPER",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "-",
		mods = "SUPER",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
}
-- Finally, return the configuration to wezterm:
return config
