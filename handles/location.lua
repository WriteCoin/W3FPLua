nsLocation = {}

local t = nsLocation

---@param x real
---@param y real
---@return location
function t.alloc(x, y)
    return Location(x, y)
end

---@param whichLocation location
---@return real
function t.getX(whichLocation)
    return GetLocationX(whichLocation)
end

---@param whichLocation location
---@return real
function t.getY(whichLocation)
    return GetLocationY(whichLocation)
end

-- This function is asynchronous. The values it returns are not guaranteed synchronous between each player.
--  If you attempt to use it in a synchronous manner, it may cause a desync.
---@param whichLocation location
---@return real
function t.getZ(whichLocation)
    return GetLocationZ(whichLocation)
end

---@param whichLocation location
function t.remove(whichLocation)
    RemoveLocation(whichLocation)
end

---@param whichLocation location
---@param newX real
---@param newY real
function t.move(whichLocation, newX, newY)
    MoveLocation(whichLocation, newX, newY)
end

---@param whichLocation location
---@param newX real
function t.setX(whichLocation, newX)
    t.move(whichLocation, newX, t.getY(whichLocation))
end

---@param whichLocation location
---@param newY real
function t.setY(whichLocation, newY)
    t.move(whichLocation, t.getX(whichLocation), newY)
end

---@param whichLocation location
---@param whichRegion region
---@return boolean
function t.isInRegion(whichLocation, whichRegion)
    IsLocationInRegion(whichRegion, whichLocation)
end

tempLocation = t.alloc(0,0)

return t