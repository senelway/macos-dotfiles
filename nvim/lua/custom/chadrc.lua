---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
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
