-- init.lua
-- Coltrane Willsey
-- 2022-03-03 [14:15]

local init = {}

-- properties [[
    init.clear = "\027[H\027[2J"
-- properties ]]

-- modules [[
    local common = 'src/common/'
    init.caretaker = require(common.. 'caretaker')
    init.colors = require(common.. 'colors')
    init.enum = require(common.. 'enum')
-- modules ]]

-- functions [[

    function init.sleep(t)
        local sec = tonumber(os.clock() + t)
        while os.clock() < sec do end
    end

    function init.split(str, sep)
        if not (sep) then
            sep = "%s"
        end
        local t = {}
        for str in string.gmatch(str,"([^"..sep.."]+)") do
            table.insert(t,str)
        end
        return t
    end

-- functions ]]

return init
