function FormatCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return FourCC(id)
    end
end
require 'W3FPLua.handles.handle'
require 'W3FPLua.handles.location handle'
require 'W3FPLua.handles.point'
require 'W3FPLua.handles.widget'