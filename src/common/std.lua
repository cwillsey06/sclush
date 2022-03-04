-- write.lua
-- Coltrane Willsey
-- 2022-03-03 [14:50]

--[[
    -- TODO: Add documentation
--]]


local std = {}
std.__index = std

local settings = require('src/shell/settings')
local Enum = require('src/common/Enum')

function std.write(writeType, string)
    local bright = ''
    if settings.BrightColorsAlways then
        bright = Enum.Colors.bright
    end

    if string then
        io.write(bright.. writeType ..string)
    else
        io.write(bright.. settings.DefaultTextColor ..writeType)
    end
end

function std.clear()
    io.write("\027[H\027[2J")
end

return std
