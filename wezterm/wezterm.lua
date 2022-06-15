local wezterm = require 'wezterm';
local dracula = require 'dracula';

return {
  colors = dracula,
  use_fancy_tab_bar = false,
  font = wezterm.font("JuliaMono"),
  window_close_confirmation = "NeverPrompt",
  enable_scroll_bar = true,
  window_padding = {
    left = "0cell",
    right = "0cell",
    top = "0cell",
    bottom = "0cell",
  },
  font_size = 11.0,
  keys = {
    { key = "t", mods = "CTRL", action = wezterm.action{SpawnTab="CurrentPaneDomain"}},
    { key = "w", mods = "CTRL|SHIFT", action = wezterm.action{CloseCurrentTab={confirm=false}}},
    { key = "q", mods = "CTRL|SHIFT", action = wezterm.action{CloseCurrentPane={confirm=false}}},
    { key = "Insert", mods = "CTRL", action = wezterm.action{CopyTo="Clipboard"}},
    { key = "Insert", mods = "SHIFT", action = wezterm.action{PasteFrom="Clipboard"}},
    { key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action{ActivateTabRelative=-1}},
    { key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action{ActivateTabRelative=1}},
    { key = "\"", mods = "CTRL|ALT", action = wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    { key = "%", mods = "CTRL|ALT", action = wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    { key = "PageUp", mods = "CTRL|SHIFT", action = wezterm.action{MoveTabRelative=-1}},
    { key = "PageDown", mods = "CTRL|SHIFT", action = wezterm.action{MoveTabRelative=1}},
  },
}
