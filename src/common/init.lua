-- init.lua
-- Coltrane Willsey
-- 2022-03-03 [14:16]

local init = {}

-- properties [[
-- properties ]]

-- modules [[
    local common = 'src/common/'
    init.caretaker = require(common.. 'caretaker')
    init.promise = require(common.. 'promise')
    init.colors = require(common.. 'colors')
    init.enum = require(common.. 'enum')
    init.std = require(common.. 'std')
    init.co = require(common.. 'co')
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
