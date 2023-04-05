local M = {}

local browserOpen = function(link)
  local url = string.format('open "%s"', link)
  os.execute(url)
end

local trim = function(string)
  return string.gsub(string, "[\n\r]", "")
end

M.load = function()
  vim.api.nvim_create_user_command("GithubOpen", function()
    local remote = vim.fn.system "git ls-remote --get-url origin"
    local branch = vim.fn.system "git rev-parse --abbrev-ref HEAD"
    local path = vim.fn.expand "%:."

    if string.match(remote, ".*[github].*") == false then
      print "Not a github or gitlab repo"
      return
    end

    if string.match(remote, "^git") then
      remote = trim(remote)
      remote = string.gsub(remote, ":", "/")
      remote = string.gsub(remote, "^git@", "https://")
      remote = string.gsub(remote, ".git$", "")
    end

    if branch then
      branch = trim(branch)
    end

    if string.match(path, ".") then
      remote = remote .. "/blob/" .. branch .. "/" .. path
    else
      remote = remote .. "/tree/" .. branch
    end

    browserOpen(remote)
  end, {})

  vim.api.nvim_create_user_command("LinkOpen", function()
    local s_start = vim.fn.getpos "'<"
    local s_end = vim.fn.getpos "'>"
    local n_lines = math.abs(s_end[2] - s_start[2]) + 1
    local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
    lines[1] = string.sub(lines[1], s_start[3], -1)
    if n_lines == 1 then
      lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
    else
      lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
    end

    local path = table.concat(lines, "\n")
    if string.match(path, "[a-z]*://[^ >,;]*") then
      browserOpen(path)
    else
      print "Not a link"
    end
  end, {})
end

return M
