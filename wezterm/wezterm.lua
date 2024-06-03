local wezterm = require("wezterm") local config = {}
-- Use config builder object if possible 
-- if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "GruvboxDark"
config.font = wezterm.font_with_fallback({
  {family = "IosevkaTerm Nerd Font", scale = 1.75 }
})

config.window_background_opacity = 0.85
config.window_decorations = "TITLE | RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.hide_tab_bar_if_only_one_tab = true

return config
