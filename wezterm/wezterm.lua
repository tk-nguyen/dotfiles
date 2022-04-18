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
    { key = "UpArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action{ActivatePaneDirection="Up"}},
    { key = "DownArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action{ActivatePaneDirection="Down"}},
    { key = "LeftArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action{ActivatePaneDirection="Left"}},
    { key = "RightArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action{ActivatePaneDirection="Right"}},
    { key = "\"", mods = "CTRL|ALT", action = wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    { key = "%", mods = "CTRL|ALT", action = wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    { key = "1", mods = "CTRL", action = wezterm.action{ActivateTab=0}},
    { key = "2", mods = "CTRL", action = wezterm.action{ActivateTab=1}},
    { key = "3", mods = "CTRL", action = wezterm.action{ActivateTab=2}},
    { key = "4", mods = "CTRL", action = wezterm.action{ActivateTab=3}},

  },
}
