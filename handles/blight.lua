--============================================================================
-- Blight API
--

local export = {}

local t = export

---@param whichPlayer player
---@param x real
---@param y real
---@param radius real
---@param addBlight boolean
function t.setAreaCoords(whichPlayer, x, y, radius, addBlight)
    SetBlight(whichPlayer, x, y, radius, addBlight)
end

---@param whichPlayer player
---@param p point
---@param radius real
---@param addBlight boolean
function t.setAreaPoint(whichPlayer, p, radius, addBlight)
    t.setAreaCoords(whichPlayer, Point.getX(p), Point.getY(p), radius, addBlight)
end

---@param whichPlayer player
---@param whichLocation location
---@param radius real
---@param addBlight boolean
function t.setAreaLoc(whichPlayer, whichLocation, radius, addBlight)
    SetBlightLoc(whichPlayer, whichLocation, radius, addBlight)
end

---@param whichPlayer player
---@param r rect
---@param addBlight boolean
function t.rectSet(whichPlayer, r, addBlight)
    SetBlightRect(whichPlayer, r, addBlight)
end

---@param whichPlayer player
---@param x real
---@param y real
---@param addBlight boolean
function t.setCoords(whichPlayer, x, y, addBlight)
    SetBlightPoint(whichPlayer, x, y, addBlight)
end

---@param whichPlayer player
---@param x real
---@param y real
---@param addBlight boolean
function t.setPoint(whichPlayer, p, addBlight)
    t.setCoords(whichPlayer, Point.getX(p), Point.getY(p), addBlight)
end

---@param id player
---@param x real
---@param y real
---@param face real
---@return unit
function t.createBlightedGoldmine(id, x, y, face)
    return CreateBlightedGoldmine(id, x, y, face)
end

---@param id player
---@param p point
---@param face real
---@return unit
function t.createAtPointBlightedGoldmine(id, p, face)
    return t.createBlightedGoldmine(id, Point.getX(p), Point.getY(p), face)
end

---@param x real
---@param y real
---@return boolean
function t.isCoordsBlighted(x, y)
    return IsPointBlighted(x, y)
end

---@param p point
---@return boolean
function t.isPointBlighted(p)
    return t.isCoordsBlighted(Point.getX(p), Point.getY(p))
end

return t