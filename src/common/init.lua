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

return init
