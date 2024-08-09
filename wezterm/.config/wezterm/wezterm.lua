local wezterm = require 'wezterm'
local act = wezterm.action
local config = {}


config.color_scheme = 'Tokyo Night'

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.font = wezterm.font('FiraCode Nerd Font Mono')
config.font_size = 13.0

wezterm.on('update-right-status', function(window, pane)
  local name = window:active_key_table()
  if name then
    name = 'TABLE: ' .. name
  end
  window:set_right_status(name or '')
end)

config.keys = {
  {
    key = 'r',
    mods = 'CTRL|SHIFT',
    action = act.ActivateKeyTable {
      name = 'resize_pane',
      one_shot = false,
    },
  },
  {
    key = 'a',
    mods = 'CTRL|SHIFT',
    action = act.ActivateKeyTable {
      name = 'activate_pane',
      timeout_milliseconds = 1000,
    },
  },
}

config.key_tables = {
  resize_pane = {
    { key = 'LeftArrow', action = act.AdjustPaneSize { 'Left', 10 } },
    { key = 'h', action = act.AdjustPaneSize { 'Left', 10 } },

    { key = 'RightArrow', action = act.AdjustPaneSize { 'Right', 10 } },
    { key = 'l', action = act.AdjustPaneSize { 'Right', 10 } },

    { key = 'UpArrow', action = act.AdjustPaneSize { 'Up', 10 } },
    { key = 'k', action = act.AdjustPaneSize { 'Up', 10 } },

    { key = 'DownArrow', action = act.AdjustPaneSize { 'Down', 10 } },
    { key = 'j', action = act.AdjustPaneSize { 'Down', 10 } },
    { key = 'Escape', action = 'PopKeyTable' },
  },
  activate_pane = {
    { key = 'LeftArrow', action = act.ActivatePaneDirection 'Left' },
    { key = 'h', action = act.ActivatePaneDirection 'Left' },

    { key = 'RightArrow', action = act.ActivatePaneDirection 'Right' },
    { key = 'l', action = act.ActivatePaneDirection 'Right' },

    { key = 'UpArrow', action = act.ActivatePaneDirection 'Up' },
    { key = 'k', action = act.ActivatePaneDirection 'Up' },

    { key = 'DownArrow', action = act.ActivatePaneDirection 'Down' },
    { key = 'j', action = act.ActivatePaneDirection 'Down' },
    {
      key = '-',
      action = wezterm.action.SplitPane {
        direction = 'Down',
        size = { Percent = 50 },
      },
    },
    {
      key = '|',
      mods = 'SHIFT',
      action = wezterm.action.SplitPane {
        direction = 'Right',
        size = { Percent = 50 },
      },
    },
  },
}

return config
