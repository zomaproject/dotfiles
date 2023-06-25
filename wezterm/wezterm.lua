local wezterm = require("wezterm")
local act = wezterm.action
return {
	default_cursor_style = "BlinkingBar",
	 default_prog = {"C:/Program Files/Git/bin/bash"},
	-- window_background_opacity = 0.8,
   color_scheme = "Dark+",
	font_size = 13,
  font = wezterm.font {
    family = 'JetBrains Mono',
    harfbuzz_features = { 'calt=1', 'clig=1', 'liga=1',  'zero=1', 'onum=1'
-- 'ss01=1', 'ss02=1', 'ss03=1', 'ss04=1', 'ss05=1', 'ss06=1', 
 },
  },
	window_padding = {
		left = 5,
		right = 5,
		top = 0,
		bottom = 0,
	},
	keys = {
    {key = '1', mods='ALT', action = act.ActivateTab(0)},
    {key = '2', mods='ALT', action = act.ActivateTab(1)},
    {key = '3', mods='ALT', action = act.ActivateTab(2)},
    {key = '1', mods='CTRL', action = act.MoveTab(0)},
    {key = '2', mods='CTRL', action = act.MoveTab(1)},
    {key = '3', mods='CTRL', action = act.MoveTab(2)},
		{ key = "H", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 5 } }) },
		{ key = "J", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 5 } }) },
		{ key = "K", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 5 } }) },
		{ key = "L", mods = "CTRL|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 5 } }) },
		{ key = "h", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "l", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "k", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "j", mods = "ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "t", mods = "SHIFT|CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "5", mods = "CTRL", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
		{
			key = "Enter",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},
	},
	adjust_window_size_when_changing_font_size = false,
	hide_tab_bar_if_only_one_tab = true,
}












