-- Encapsulates all objects of all types in a map.
WarMapObjects = {}

---@class warMapObjects

---@return warMapObjects
function newWarMapObjects()
    local object = {}           ---@type warMapObjects

    object.ability = {}         ---@type warObject
    object.item = {}            ---@type warObject
    object.unit = {}            ---@type warObject
    object.destructable = {}    ---@type warObject
    object.doodad = {}          ---@type warObject
    object.buff = {}            ---@type warObject
    object.upgrade = {}         ---@type warObject

    return object
end