local autocmd = vim.api.nvim_create_autocmd
-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
--
local patterns = {
  -- languages
  "*.lua",
  "*.go",
  "*.ts",
  -- frameworkds
  "*.vue",
  "*.tsx",
  -- styles
  "*.css",
  "*.scss",
  "*.pcss",
  -- NOTE: c#
  -- "*.cs",
}
autocmd("BufEnter", {
  pattern = patterns,
  command = "set title | set relativenumber",
})

vim.api.nvim_create_user_command("GHOpen", function()
  local remote = vim.fn.system "git ls-remote --get-url origin"
  -- local branch = vim.fn.system "git rev-parse --abbrev-ref HEAD"

  if string.match(remote, ".*[github].*") == false then
    print "Not a github or gitlab repo"
    return
  end

  if string.match(remote, "^git") then
    remote = string.gsub(remote, "[\n\r]", "")
    remote = string.gsub(remote, ":", "/")
    remote = string.gsub(remote, "^git@", "https://")
    remote = string.gsub(remote, ".git$", "")
  end

  local url = string.format('open "%s"', remote)

  os.execute(url)
end, { nargs = 0 })
