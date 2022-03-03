-- shell.lua
-- Coltrane Willsey
-- 2022-03-03

--[[
  -- TODO: Add documentation
--]]

local settings = require('src/common/settings')
local common = require('src/common/init')
local Caretaker = require(common.caretaker)

local shell = {}
shell.__index = shell
shell.Version = '1.0.0'
shell.build = '1'

function shell.new()
  local self = setmetatable({}, shell)
  self._caretaker = Caretaker.new()
  self._shell_tasks = self._caretaker:Extend()

  

  self._caretaker:Add(self)
  return self
end

function shell:Destroy()
  self._my_caretaker:Destroy()
end

return shell
