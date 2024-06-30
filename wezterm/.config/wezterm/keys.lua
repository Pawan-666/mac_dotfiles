local wezterm = require "wezterm"
local act = wezterm.action
local act_cb = wezterm.action_callback

local keybindings = {

  -- { key = "a", mods = "CMD", action = act.SendKey({ key = "\x1b\x6d" })}, -- escape


  -- copy paste
  { key = "c", mods = "ALT", action = act.CopyTo "Clipboard" },
  { key = "v", mods = "ALT", action = act.PasteFrom "Clipboard" },

  -- goto last tab
  { key = "Tab", mods = "ALT", action = act.ActivateTabRelative(1) },

  --- Copymode vi
  { key = ";", mods = "CMD", action = act.ActivateCopyMode },

  -- --- Splits
  -- { key = "-", mods = "CTRL", action = act.SplitVertical { domain = "CurrentPaneDomain" } },
  -- { key = ";", mods = "CTRL", action = act.SplitHorizontal { domain = "CurrentPaneDomain" } },

  --- spawn new tab
  { key = "t", mods = "ALT", action = act.SpawnTab "CurrentPaneDomain" },

  -- --- Pane switching
  -- { key = "h", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection "Left" },
  -- { key = "l", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection "Right" },
  -- { key = "k", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection "Up" },
  -- { key = "j", mods = "SHIFT|CTRL", action = act.ActivatePaneDirection "Down" },

  {
    mods = "CMD",
    key = "a",
    action = act.Multiple({
        act.SendKey({ mods = "ALT", key = "m" }),
        -- act.SendKey({ key = "p" }),
    }),
    },
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

  --- rename tab
  -- {
  --   key = "R",
  --   mods = "CTRL|SHIFT",
  --   action = act.PromptInputLine {
  --     description = "Enter new name for tab",
  --     action = wezterm.action_callback(function(window, _, line)
  --       if line then
  --         window:active_tab():set_title(line)
  --       end
  --     end),
  --   },
  -- },
}

return keybindings
