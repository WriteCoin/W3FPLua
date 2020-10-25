local export = {}

local t = export

---@param h handle
---@return integer
function t.getId(h)
    return GetHandleId(h)
end

return t