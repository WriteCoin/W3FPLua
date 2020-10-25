--============================================================================
-- Destructable Object API
-- Facing arguments are specified in degrees

local export = {}

local t = export

---@param objectid integer
---@param x real
---@param y real
---@param z real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function t.coordsCreate(objectid, x, y, z, face, scale, variation)
    return CreateDestructableZ( FormatCC(objectid), x, y, z, face, scale, variation)
end

---@param objectid integer
---@param p point
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function t.pointCreate(objectid, p, face, scale, variation)
    return t.coordsCreate(objectid, Point.getX(p), Point.getY(p), Point.getZ(p), face, scale, variation)
end

---@param objectid integer
---@param x real
---@param y real
---@param z real
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function t.deadCoordsCreate(objectid, x, y, z, face, scale, varitaion)
    return CreateDeadDestructableZ(FormatCC(objectid), x, y, z, face, scale, varitaion)
end

---@param objectid integer
---@param p point
---@param face real
---@param scale real
---@param variation integer
---@return destructable
function t.deadPointCreate(objectid, p, face, scale, variation)
    return t.deadCoordsCreate(objectid, Point.getX(p), Point.getY(p), Point.getZ(p), face, scale, variation)
end


---@param d destructable
function t.remove(d)
    RemoveDestructable(d)
end

---@param d destructable
function t.kill(d)
    KillDestructable(d)
end

---@param d destructable
---@param flag boolean
function t.setInvulnerable(d, flag)
    SetDestructableInvulnerable(d, flag)
end

---@param d destructable
---@return boolean
function t.isInvulnerable(d)
    return IsDestructableInvulnerable(d)
end

---@param r rect
---@param filter boolexpr
---@param actionFunc code
function t.enumInRect(r, filter, actionFunc)
    EnumDestructablesInRect(r, filter, actionFunc)
end

---@param d destructable
---@return integer
function t.getTypeId(d)
    return GetDestructableTypeId(d)
end

---@param d destructable
---@return real
function t.getX(d)
    return GetDestructableX(d)
end

---@param d destructable
---@return real
function t.getY(d)
    return GetDestructableY(d)
end

---@param d destructable
---@param life real
function t.setLife(d, life)
    SetDestructableLife(d, life)
end

---@param d destructable
---@return real
function t.getLife(d)
    return GetDestructableLife(d)
end

---@param d destructable
---@param max real
function t.setMaxLife(d, max)
    SetDestructableMaxLife(d, max)
end

---@param d destructable
---@return real
function t.getMaxLife(d)
    return GetDestructableMaxLife(d)
end

---@param d destructable
---@param life real
---@param birth boolean
function t.restoreLife(d, life, birth)
    DestructableRestoreLife(d, life, birth)
end

---@param d destructable
---@param whichAnimation string
function t.queueAnimation(d, whichAnimation)
    QueueDestructableAnimation(d, whichAnimation)
end

---@param d destructable
---@param whichAnimation string
function t.setAnimation(d, whichAnimation)
    SetDestructableAnimation(d, whichAnimation)
end 

---@param d destructable
---@param speedFactor real
function t.setAnimationSpeed(d, speedFactor)
    SetDestructableAnimationSpeed(d, speedFactor)
end

---@param d destructable
---@param flag boolean
function t.show(d, flag)
    ShowDestructable(d, flag)
end

---@param d destructable
---@return real
function t.getOccluderHeight(d)
    return GetDestructableOccluderHeight(d)
end

---@param d destructable
---@param height real
function t.setOccluderHeight(d, height)
    SetDestructableOccluderHeight(d, height)
end

---@param d destructable
---@return string
function t.getName(d)
    return GetDestructableName(d)
end

---@return destructable
function t.triggered()
    GetTriggerDestructable()
end

---@return destructable
function t.filtered()
    return GetFilterDestructable()
end

---@return destructable
function t.enumed()
    return GetEnumDestructable()
end

return t