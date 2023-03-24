local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with {
    bin = "prettierd",
    filetypes = { "html", "markdown", "css", "ts", "tsx", "vue" }
  }, -- so prettier works only on these filetypes

  -- frontend 
  b.formatting.eslint_d,

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- code spell
  b.diagnostics.write_good,
  b.diagnostics.shellcheck,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
