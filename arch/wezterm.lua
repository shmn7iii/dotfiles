local wezterm = require ('wezterm')

local config = {
  font = wezterm.font("Cica"),
  color_scheme = 'nord',
  
  hide_tab_bar_if_only_one_tab = true,

  keys = {
    { key = 'v', mods = 'SHIFT|CTRL', action = wezterm.action.Paste },
  },
}

return config

