-- Box UK Contrast — WezTerm
-- return this from your config, or merge into config.colors.
return {
  foreground = "#b8c7cc",
  background = "#161e22",
  cursor_bg = "#15b8ae",
  cursor_fg = "#161e22",
  cursor_border = "#15b8ae",
  selection_fg = "#161e22",
  selection_bg = "#017c9d",
  scrollbar_thumb = "#303b47",
  split = "#017c9d",
  ansi = {
    "#161e22", -- black
    "#f77669", -- red
    "#019d76", -- green
    "#ffcb6e", -- yellow
    "#017c9d", -- blue
    "#b750ae", -- magenta
    "#15b8ae", -- cyan
    "#b8c7cc", -- white
  },
  brights = {
    "#303b47", -- bright black
    "#ff5370", -- bright red
    "#15b8ae", -- bright green
    "#ffd68a", -- bright yellow
    "#2f9dc0", -- bright blue
    "#ff5370", -- bright magenta
    "#4fd8ce", -- bright cyan
    "#e6e6e6", -- bright white
  },
  tab_bar = {
    background = "#111519",
    active_tab   = { bg_color = "#ffcb6e", fg_color = "#161e22" },
    inactive_tab = { bg_color = "#1b2228", fg_color = "#b8c7cc" },
  },
}
