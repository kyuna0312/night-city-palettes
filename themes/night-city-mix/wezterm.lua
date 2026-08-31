-- Night City Mix — WezTerm
-- return this from your config, or merge into config.colors.
return {
  foreground = "#beccd9",
  background = "#0c1a1e",
  cursor_bg = "#1fc4c6",
  cursor_fg = "#0c1a1e",
  cursor_border = "#1fc4c6",
  selection_fg = "#0c1a1e",
  selection_bg = "#22abbd",
  scrollbar_thumb = "#2a3a40",
  split = "#22abbd",
  ansi = {
    "#0c1a1e", -- black
    "#f9646a", -- red
    "#12ba7b", -- green
    "#ffd05d", -- yellow
    "#4189c4", -- blue
    "#b858ca", -- magenta
    "#22abbd", -- cyan
    "#beccd9", -- white
  },
  brights = {
    "#2a3a40", -- bright black
    "#ff8a80", -- bright red
    "#1fc4c6", -- bright green
    "#ffe08a", -- bright yellow
    "#5fa0d8", -- bright blue
    "#d44cbd", -- bright magenta
    "#4fd8d8", -- bright cyan
    "#dce6ee", -- bright white
  },
  tab_bar = {
    background = "#08141a",
    active_tab   = { bg_color = "#ffd05d", fg_color = "#0c1a1e" },
    inactive_tab = { bg_color = "#181f2a", fg_color = "#beccd9" },
  },
}
