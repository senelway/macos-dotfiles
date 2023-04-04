local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- frontend
  "html",
  "cssls",
  "tsserver",
  "volar",
  "tailwindcss",

  -- golang
  "gopls",

  -- NOTE: c#
  -- "csharp",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.pyright.setup { blabla}
