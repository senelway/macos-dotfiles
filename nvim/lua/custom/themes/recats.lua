local M = {}

M.base_30 = {
  white = "#D9E0EE",
  darker_black = "#191828",
  black = "#1E1D2D", --  nvim bg
  black2 = "#252434",
  one_bg = "#2d2c3c", -- real bg of onedark
  one_bg2 = "#363545",
  one_bg3 = "#3e3d4d",
  grey = "#474656",
  grey_fg = "#4e4d5d",
  grey_fg2 = "#555464",
  light_grey = "#605f6f",
  red = "#F38BA8",
  baby_pink = "#ffa5c3",
  pink = "#F5C2E7",
  line = "#383747", -- for lines like vertsplit
  green = "#ABE9B3",
  vibrant_green = "#b6f4be",
  nord_blue = "#8bc2f0",
  blue = "#89B4FA",
  yellow = "#FAE3B0",
  sun = "#ffe9b6",
  purple = "#d0a9e5",
  dark_purple = "#c7a0dc",
  teal = "#B5E8E0",
  orange = "#F8BD96",
  cyan = "#89DCEB",
  statusline_bg = "#191828",
  lightbg = "#2f2e3e",
  pmenu_bg = "#ABE9B3",
  folder_bg = "#89B4FA",
  lavender = "#c7d1ff",
}

M.base_16 = {
  base00 = "#1E1D2D", -- base
  base01 = "#181825", -- mantle
  base02 = "#313244", -- surface0
  base03 = "#494d64", -- surface1
  base04 = "#cad3f5", -- surface2
  base05 = "#cdd6f4", -- text
  base06 = "#f5e0dc", -- rosewater
  base07 = "#b4befe", -- lavender
  base08 = "#f38ba8", -- red
  base09 = "#fab387", -- peach
  base0A = "#f9e2af", -- yellow
  base0B = "#a6e3a1", -- green
  base0C = "#94e2d5", -- teal
  base0D = "#89b4fa", -- blue
  base0E = "#cba6f7", -- mauve
  base0F = "#f2cdcd", -- flamingo
}

M.polish_hl = {
  ["@variable"] = { fg = M.base_30.lavender },
  ["@property"] = { fg = M.base_30.cyan },
  ["@variable.builtin"] = { fg = M.base_30.red },
}

M.type = "dark"

M = require("base46").override_theme(M, "recats")

return M
