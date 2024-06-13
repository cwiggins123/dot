local wezterm = require("wezterm") local config = {}
-- Use config builder object if possible 
-- if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "3024 (base16)"
config.font = wezterm.font_with_fallback({
  {family = "3270 Nerd Font", scale = 2.00 }
})

config.front_end = "WebGpu"
config.window_background_opacity = .90
config.window_decorations = "TITLE | RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = 'BlinkingBlock'
config.animation_fps = 120

return config
