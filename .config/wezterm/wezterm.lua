-- Pull in the wezterm API
local wezterm = require("wezterm")
local constants = require("constants")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Color scheme:
config.color_scheme = "nord"
config.term = "xterm-256color"

-- Font size:
config.font_size = 14
config.line_height = 1.1
config.font = wezterm.font("Hack Nerd Font")

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_image = constants.bg_image

-- Miscellaneous config for Mac
config.max_fps = 120
config.prefer_egl = true

-- and finally, return the configuration to wezterm
return config
