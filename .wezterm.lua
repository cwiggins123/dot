local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "Desert"
config.font = wezterm.font_with_fallback({
  {family = "Inconsolata Nerd Font Mono", scale = 1.75 },
  {family = "Hack", scale = 1.75 },
})
config.window_background_opacity = 0.75
config.window_decorations = "NONE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"

-- keys
config.leader = {key = "b", mods = "CTRL", timetout_milliseconds = 1000 }


return config




























    