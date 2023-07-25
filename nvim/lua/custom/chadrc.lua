---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  -- TODO: fix it
  theme_toggle = { "catppuccin", "monochrome" },
  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "vscode_colored",
  },
  tabufline = {
    enabled = true,
    show_numbers = true,
  },
  nvdash = {
    load_on_startup = false,
    header = {
      "                                                                             ",
    },
    buttons = {
      { "  Find File",    "<leader> ff",  "Telescope find_files" },
      { "  Recent Files", "<leader> fo",  "Telescope oldfiles" },
      { "  Find Word",    "<leader> fw",  "Telescope live_grep" },
      { "󰘬  Branch",      "<leader> gbb", "Telescope git_branches" },
      { "  Bookmarks",    "<leader> bm",  "Telescope marks" },
      { "  Themes",       "<leader> th",  "Telescope themes" },
      { "  Mappings",     "<leader> ch",  "NvCheatsheet" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
