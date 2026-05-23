local wezterm = require("wezterm")

local bg_image = wezterm.config_dir .. "/wallpaper/bg-blurred-lighter.png"

return {
  --------------------------------------------------
  -- WSL
  --------------------------------------------------
  default_prog = { "wsl.exe", "-d", "kali-linux", "--cd", "~" },
  --------------------------------------------------
  -- FONT
  --------------------------------------------------
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 13.0,
  line_height = 1.1,
  --------------------------------------------------
  -- RENDERER
  --------------------------------------------------
  front_end = "WebGpu",
  max_fps = 165,
  --------------------------------------------------
  -- WINDOW
  --------------------------------------------------
  enable_tab_bar = false,
  window_decorations = "RESIZE",
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  --------------------------------------------------
  -- BACKGROUND
  --------------------------------------------------
  window_background_image = bg_image,
  window_background_image_hsb = {
    brightness = 0.30,
  },
  window_background_opacity = 1,
  --------------------------------------------------
  -- COLORS
  --------------------------------------------------
  colors = {
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
  },
  --------------------------------------------------
  -- CURSOR
  --------------------------------------------------
  default_cursor_style = "BlinkingBar",
  cursor_blink_rate = 700,
  --------------------------------------------------
  -- SCROLLBACK
  --------------------------------------------------
  scrollback_lines = 10000,
  --------------------------------------------------
  -- IMAGE SUPPORT
  --------------------------------------------------
  enable_kitty_graphics = true,
}
