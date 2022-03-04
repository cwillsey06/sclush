local common = require('src/common/init')
local Promise = require(common.promise)
local Enum = require(common.enum)
local std = require(common.std)
local co = require(common.co)

local sh_profile = {
    echo = {
        meta = 'echos $args to console';
        invoke = function(self, args)
            std.write(pack('=A', unpack(args)))
        end;
    }
}

return sh_profile