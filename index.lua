local _FourCC = FourCC
---@param id string
---@return number
function FourCC(id)
    return _FourCC(id)
end

function defaultValue(val,default)
    return val and val or default
end

require('W3FPLua.objects.index')