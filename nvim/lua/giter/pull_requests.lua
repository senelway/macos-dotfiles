local Data = require("giter.data")

local PullRequests = {}
PullRequests.__index = PullRequests

local function merge_pr(pr_number)
  local handle = io.popen("gh pr merge " .. pr_number .. " --squash --delete-branch")
  if not handle then
    return false
  end
  local result = handle:read("*a")
  handle:close()

  return result
end

local function close_pr(pr_number)
  local handle = io.popen("gh pr close " .. pr_number)
  if not handle then
    return false
  end
  local result = handle:read("*a")
  handle:close()

  return result
end

-- @param bufnr: integer
function PullRequests:proceed(bufnr)
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
  local isEmpty = true;
  for _, line in ipairs(lines) do
    if line == "" then
      goto continue
    end

    isEmpty = false;

    local action, pr_number = string.match(line, "%[(%w+)%] #(%d+)")
    if pr_number and action then
      if action == 'merge' then
        if not merge_pr(pr_number) then
          print("Failed to merge PR " .. pr_number)
        end
      end

      if action == 'close' then
        if not close_pr(pr_number) then
          print("Failed to close PR " .. pr_number)
        end
      end
    end

    ::continue::
  end

  if not isEmpty then
    Data:pr_list_sync(bufnr)
  end
end

return PullRequests
