local export = {}

local t = export

---@param unitIdString string
---@return integer
function t.id(unitIdString)
    return UnitId(unitIdString)
end

---@param unitId integer
---@return string
function t.ToStringId(unitId)
    return UnitId2String(FormatCC(unitId))
end

return t