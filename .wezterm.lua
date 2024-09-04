local wezterm= require("wezterm")

local config = wezterm.config_builder()

config.font_size = 18
config.enable_tab_bar = false
config.colors = {
    background = "#000030"
}
config.window_background_opacity = 0.6
return config
