local _FourCC = FourCC
---@param id string
---@return number
function FourCC(id)
    return _FourCC(id)
end

---@param id integer|string
---@return integer
function FormatCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return FourCC(id)
    end
end

local _OrderId = OrderId
---@param orderIdString string
---@return integer
function OrderId(orderIdString)
    return _OrderId(orderIdString)
end

local _OrderId2String = OrderId2String
---@param orderId integer
---@return string
function OrderId2String(orderId)
    return _OrderId2String(FormatCC(orderId))
end

---@param unitIdString string
---@return integer
function Unit.id(unitIdString)
    return UnitId(unitIdString)
end

---@param unitId integer
---@return string
function Unit.ToStringId(unitId)
    return UnitId2String(FormatCC(unitId))
end

-- Not currently working correctly...
---@param abilityIdString string
---@return integer
function Ability.id(abilityIdString)
    return AbilityId(abilityIdString)
end

---@param abilityId integer
---@return string
function Ability.ToStringId(abilityId)
    return AbilityId2String(FormatCC(abilityId))
end

-- Looks up the "name" field for any object (unit, item, ability)
local _GetObjectName = GetObjectName
---@param objectId integer
---@return string
function GetObjectName(objectId)
    return _GetObjectName(objectId)
end