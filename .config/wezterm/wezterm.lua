local wezterm = require("wezterm")
local config = wezterm.config_builder()

local bg_image = wezterm.config_dir .. "/wallpaper/deerInFront.jpg"

--------------------------------------------------
-- WAYLAND / RENDERER FIX
--------------------------------------------------
config.enable_wayland = false
config.front_end = "OpenGL"

--------------------------------------------------
-- FONT
--------------------------------------------------
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13.0
config.line_height = 1.1

--------------------------------------------------
-- PERFORMANCE
--------------------------------------------------
config.max_fps = 165

--------------------------------------------------
-- WINDOW
--------------------------------------------------
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

--------------------------------------------------
-- BACKGROUND
--------------------------------------------------
config.window_background_image = bg_image

config.window_background_image_hsb = {
  brightness = 0.30,
}

config.window_background_opacity = 1

--------------------------------------------------
-- COLORS
--------------------------------------------------
config.colors = {
  background = "#07141a",
  foreground = "#d6deeb",

  cursor_bg = "#82aaff",
  cursor_border = "#82aaff",
  cursor_fg = "#07141a",

  selection_bg = "#24404f",
  selection_fg = "#ffffff",

  scrollbar_thumb = "#1a2a33",
  split = "#1a2a33",

  ansi = {
    "#01111a",
    "#ff5f87",
    "#5fd7af",
    "#ffd787",
    "#57c7ff",
    "#c792ea",
    "#5fd7ff",
    "#d6deeb",
  },

  brights = {
    "#575656",
    "#ff6b6b",
    "#99ffcc",
    "#ffe082",
    "#82aaff",
    "#d4bfff",
    "#89ddff",
    "#ffffff",
  },
}

--------------------------------------------------
-- CURSOR
--------------------------------------------------
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 700

--------------------------------------------------
-- SCROLLBACK
--------------------------------------------------
config.scrollback_lines = 10000

--------------------------------------------------
-- IMAGE SUPPORT
--------------------------------------------------
config.enable_kitty_graphics = true

return config
