local wezterm = require("wezterm")

local config = {}
-- Use config builder object if possible 
-- if wezterm.config_builder then config = wezterm.config_builder() end 

-- Settings
config.color_scheme = "Oxocarbon Dark (Gogh)"
config.font = wezterm.font_with_fallback({
  {family = "Blex Mono Nerd Font", scale = 1.1 }
})

return config
