-- shell.lua
-- Coltrane Willsey
-- 2022-03-03

--[[
  -- TODO: Add documentation
--]]

local shell = {}
shell.__index = shell

function shell.new()
  local self = setmetatable({}, shell)
  

  return self
end

function shell:Destroy()
  
end

return shell
