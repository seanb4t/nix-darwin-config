local wezterm = require 'wezterm'

function Scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'zenbones_dark'
  else
    return 'zenbones_light'
  end
end

local config = wezterm.config_builder()

-- colors
config.color_scheme = Scheme_for_appearance(wezterm.gui.get_appearance())

-- fonts
config.font = wezterm.font("JetBrains Mono")
config.font_size = 13
config.line_height = 1.2

-- keyboard
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

-- terminal
config.initial_cols = 160
config.initial_rows = 50
config.scrollback_lines = 5000

-- window and UI
config.adjust_window_size_when_changing_font_size = false
config.hide_tab_bar_if_only_one_tab = false
config.window_decorations = "RESIZE"
config.window_close_confirmation = 'NeverPrompt'
config.window_padding = {
  left   = '2cell',
  right  = '2cell',
  top    = '1cell',
  bottom = '1cell'
}

-- Done, return
return config
