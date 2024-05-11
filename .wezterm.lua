local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "OneHalfDark"
config.font = wezterm.font_with_fallback({
  {family = "Input Mono", scale = 1.75 },
  {family = "Hack", scale = 1.75 },
})
config.window_background_opacity = 0.85
config.window_decorations = "NONE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"
config.enable_tab_bar = false
config.enable_wayland = true

-- keys
config.leader = {key = "b", mods = "CTRL", timetout_milliseconds = 1000 }

return config




























    
