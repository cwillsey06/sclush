local shell = {}
shell.__index = shell


function shell.new()
  local self = setmetatable({}, shell)
  
  

  return self
end

return shell