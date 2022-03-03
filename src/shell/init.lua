-- init.lua
-- Coltrane Willsey
-- 2022-03-03 [14:16]

--[[
  -- TODO: Add documentation
--]]

local common = require('src/common/init')
local Caretaker = require(common.caretaker)
local Promise = require(common.promise)
local colors = require(common.colors)
local Enum = require(common.enum)
local std = require(common.std)
local co = require(common.co)

function getCommand(raw)
	return raw:match("^([%w]+)")
end

function getArguments(raw)
	raw = raw:gsub("^([%w]+)","")
	return common.split(raw)
end

local shell = {}
shell.__index = shell
shell.Version = '1.0.0'

function shell.new()
  local self = setmetatable({}, shell)
  self._caretaker = Caretaker.new()
  self._shell_tasks = self._caretaker:Extend()

  self.Profile = require('src/shell/profile')
  self.Settings = require('src/shell/settings')

  self._caretaker:Add(self)
  return self
end

function shell:Run(raw)
	local command = self.Profile[getCommand(raw)]
	if command then
  local args = getArguments(raw)
    xpcall(function()
			  command.invoke(self,args)
      end,
      function(err)
        std.write(Enum.WriteType.Error,err)
      end)
	elseif raw:match("^%s*$") then
    return
	else
		util.write(Enum.WriteType.Error,"unknown input")
	end
end

--

function shell:Cleanup()
  self._shell_tasks:Cleanup()
end

function shell:Destroy()
  self._caretaker:Destroy()
end

return shell
