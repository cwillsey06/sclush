-- co.lua
-- Coltrane Willsey
-- 2022-03-03 [14:15]

local wait = require('src/common/wait')

local co = {}
co.__index = co

function co.spawn(f, ...)
    coroutine.wrap(f)(...)
end

function co.delay(f, delay, ...)
    local arg = {...}
    co.spawn(function()
        wait(delay or 0.001)
        co.spawn(f, unpack(arg))
    end)
end

return co
