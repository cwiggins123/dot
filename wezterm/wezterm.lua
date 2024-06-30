local wezterm = require("wezterm")
local config = {}

if wezterm.config_builder then config = wezterm.config_builder() end
config.color_scheme = "3024 (base16)"
config.font = wezterm.font_with_fallback({
  { family = "Liga SFMono Nerd Font", scale = 1.5 },
  { family = "Font Awesome 6 Free", scale = 1.5 },
  { family = "Monospace", scale = 1.5 },
})

config.window_background_opacity = 0.85
config.window_decorations = "RESIZE"
config.window_close_confirmation = "AlwaysPrompt"
config.scrollback_lines = 3000
config.default_workspace = "Home"
config.hide_tab_bar_if_only_one_tab = true
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 144

return config
