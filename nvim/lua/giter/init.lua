local Data = require("giter.data")
local Ui = require("giter.ui")


-- @class: Giter
local Giter = {}
Giter.__index = Giter

-- @return: Giter
function Giter:new()
  local giter = setmetatable({ data = Data:new(), ui = Ui:new() }, self)

  return giter
end

function Giter:open_pr_list()
  self.ui:open_pr_list(self.data:pr_list_load())
end

local _giter = Giter:new()

function Giter.setup(self)
  if self ~= _giter then
    self = _giter
  end
  return self
end

return _giter
