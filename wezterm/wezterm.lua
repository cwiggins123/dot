local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "OneHalfDark"
config.font = wezterm.font_with_fallback({
  {family = 'CaskaydiaCove Nerd Font', scale = 1.66 },
  {family = 'Cascadia Code', scale = 1.66},
  {family = 'Font Awesome 6 Free,Font Awesome 6 Free Regular', scale = 1.66},
})
config.window_background_opacity = 0.90
config.window_decorations = "TITLE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "home"
config.enable_tab_bar = false
config.enable_wayland = false
config.bold_brightens_ansi_colors = false

-- keys
config.leader = {key = "b", mods = "CTRL", timetout_milliseconds = 1000 }

return config




























    
