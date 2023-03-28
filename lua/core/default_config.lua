-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "v2.0",
  },
}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "onedark", "one_light" },
  theme = "onedark", -- default theme
  transparency = false,

  -- cmp themeing
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "colored", -- colored / simple
  },

  telescope = {
    style = "borderless", -- borderless / bordered
  },

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,
    header = {
      "                                                              &&###         ",
      "     &BB##&&                                          &##BGP55YYYJ5&        ",
      "     G?7???JY5PGB#&                              &#GP5YYYJJJJYYYYJ5#        ",
      "     G?777777777??JY5GB&                      &B5J?????JJJJJYYYYYY5#        ",
      "     B?7777777777777777?J5G#&               &PJ????????????JJJYYYY5#        ",
      "     #?!!777!!!!!!!!777!!~!7?YGBBGGGPPPGGBB#5JJJ??????????????JJYY5&        ",
      "      B?????????77???????7!7?JJ?777?J?777??77!!777!!!!!!7JYJ?????JG         ",
      "       57????????7777777!!!!7?JJ?77??J?7!7??7!!7777!!!!!~~!JY????J#         ",
      "       &Y??????????77!!!!!!!!7?JJ?77?J?7!!7??7!7777!!!7!!!~~7YJ??P          ",
      "        #Y?????J?7777777777!!77???77?J?7!!7777!!7777!!!!!!!~~7YJY#          ",
      "         &PJ????77777777777777777777???7!!!!!!!!7777!!!!!!!!!~75#           ",
      "           &BJ7777777777777777777!777777!~^:::~!7777!!!!!!!!!!~J#           ",
      "          &Y777777777777777JJJJYJJ7!7?!~:.    .:~!7?7???!!!!!!!!J#          ",
      "         #Y7??77777777777JY!:.^5&#B5?!~:.      .^?YJG&&##GJ!!!!!7G          ",
      "        #J???????????777JY.    .#   &P^.       !J!:.!Y&    G7!!!!5&         ",
      "       &Y???J?????77!!!~5~  ^55B      5       7?      B    &Y!!!!?#         ",
      "       5????JJJJJ?~:....!Y  .#        Y       5^  .JP#     &J~!!!7G         ",
      "      #J?????JJ?7~.  ....!J~.:Y#    #J  ?5???!~Y^  ~#     &Y..:^!!5         ",
      "      B???JYJJ?!^.    ....:!77!7YPY!.   ^Y&#P7 .77!^^?G&B5!.....:~?#        ",
      "      &J??????!^.        ..   ..       ~^ P^:^    :^^^^^:...... .:~Y&       ",
      "       BJ?????!:                       7J~B!J7         ......    .^!Y&      ",
      "        #Y??J?7^.                       !7.!7.                    :~?B      ",
      "          BY???!:.                                               .:!?B      ",
      "            B5J?7^.                                             .:~!Y&      ",
      "              &B5J7~:.                                         .^!75&       ",
      "                 &#PY7~^:..                                ..:^!?5#         ",
      "                     &#G5J7~^::..                     ..::^!7JPB&           ",
      "                          &#BG5YJ?7!~~^^^::::::^^^~~!7?J5PB#&               ",
    },
    buttons = {
      { "  Find File", "<leader> ff", "Telescope find_files" },
      { "  Recent Files", "<leader> fo", "Telescope oldfiles" },
      { "  Find Word", "<leader> fw", "Telescope live_grep" },
      { "󰘬  Branch", "<leader> gbb", "Telescope git_branches" },
      { "  Bookmarks", "<leader> bm", "Telescope marks" },
      { "  Themes", "<leader> th", "Telescope themes" },
      { "  Mappings", "<leader> ch", "NvCheatsheet" },
    },
  },

  cheatsheet = {
    theme = "grid", -- simple/grid
  },

  lsp = {
    -- show function signatures i.e args as you type
    signature = {
      disabled = false,
      silent = true, -- silences 'no signature help available' message from appearing
    },
  },
}

M.plugins = "" -- path i.e "custom.plugins" -> custom/plugins.lua only and not custom/plugins/init.lua!!!!

M.lazy_nvim = {} -- config for lazy.nvim startup options

-- these are default mappings, check core.mappings for table structure
M.mappings = {}

return M
