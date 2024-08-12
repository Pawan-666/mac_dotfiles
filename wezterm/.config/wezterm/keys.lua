local wezterm = require "wezterm"
local act = wezterm.action
-- local act_cb = wezterm.action_callback

local keybindings = {
  -- { key = 'a',  mods = mod.SUPER,     action = act.SendString '\x1bOH' },
  -- copy paste
  { key = "c", mods = "ALT", action = act.CopyTo "Clipboard" },
  { key = "v", mods = "ALT", action = act.PasteFrom "Clipboard" },

  { key = "Tab", mods = "ALT", action = act.ActivateTabRelative(1) },

  --- Copymode vi
  { key = ";", mods = "CMD", action = act.ActivateCopyMode },

  --- spawn new tab
  { key = "t", mods = "ALT", action = act.SpawnTab "CurrentPaneDomain" },


  {
    mods = "CMD",
    key = "a",
    action = act.Multiple({
        act.SendKey({ mods = "ALT", key = "m" }),
        -- act.SendKey({ key = "p" }),
    }),
    },

      -- - { key: A, mods: Command, chars: "\x1b\x6d" } # tmux prefix alt-m
  --
  {
    mods = "CMD",
    key = "d",
    action = act.Multiple({
        act.SendKey({ mods = "ALT", key = "d" }),
    }),
    },
  {
    mods = "CMD",
    key = "b",
    action = act.Multiple({
        act.SendKey({ mods = "ALT", key = "b" }),
    }),
    },
  -- {
  --   mods = "CMD",
  --   key = "t",
  --   action = act.Multiple({
  --       act.SendKey({ mods = "ALT", key = "t" }),
  --   }),
  --   },
  {
    mods = "CMD",
    key = "f",
    action = act.Multiple({
        act.SendKey({ mods = "ALT", key = "f" }),
    }),
    },
}

return keybindings
