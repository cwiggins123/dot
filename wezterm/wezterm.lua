local wezterm = require("wezterm")

local config = {}
-- Use config builder object if possible 
-- if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "Oxocarbon Dark (Gogh)"
config.font = wezterm.font_with_fallback({
  {family = "BlexMono Nerd Font Propo", scale = 1.2 }
})

return config
