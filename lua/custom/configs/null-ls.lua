local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- webdev stuff
  b.formatting.prettier.with {
    -- TODO: migrate to ROME
    bin = "prettierd",
    filetypes = { "html", "markdown", "css", "ts", "tsx", "vue", "pcss", "scss" },
  }, -- so prettier works only on these filetypes

  -- frontend
  b.formatting.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports,

  -- code spell
  b.diagnostics.write_good,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
