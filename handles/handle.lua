Handle = {}

local t = Handle

---@param h handle
---@return integer
function t.getId(h)
    return GetHandleId(h)
end

return t