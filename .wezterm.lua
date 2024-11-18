local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.audible_bell = "Disabled"
config.anti_alias_custom_block_glyphs = false
config.default_cwd = wezterm.home_dir .. "/repos"
config.font = wezterm.font("Hack Nerd Font")
config.font_size = 16
config.hide_tab_bar_if_only_one_tab = true
config.keys = {
	{
		key = "f",
		mods = "SUPER|CTRL",
		action = wezterm.action.ToggleFullScreen,
	},
}
config.macos_window_background_blur = 20
-- config.native_macos_fullscreen_mode = true
-- config.scrollback_lines = 3500
config.window_background_opacity = 0.82
config.use_fancy_tab_bar = false
config.max_fps = 240

return config
