local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  -- frontend
  "html",
  "cssls",
  "tsserver",
  -- "tailwindcss",
  "volar",
  "tailwindcss",

  -- golang
  "gopls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  bin = "eslint_d",
}

-- lspconfig.pyright.setup { blabla}
