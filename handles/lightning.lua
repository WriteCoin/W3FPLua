Lightning = {}

local t = {}

---@param codeName string
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@return lightning
function t.add(codeName, checkVisibility, x1, y1, x2, y2)
    return AddLightning(codeName, checkVisibility, x1, y1, x2, y2)
end

---@param codeName string
---@param checkVisibility boolean
---@param p1 point
---@param p2 point
---@return lightning
function t.pointAdd(codeName, checkVisibility, p1, p2)
    return t.add(codeName, checkVisibility, Point.getX(p1), Point.getY(p1), Point.getX(p2), Point.getY(p2))
end

---@param codeName string
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param z1 real
---@param x2 real
---@param y2 real
---@param z2 real
---@return lightning
function t.exAdd(codeName, checkVisibility, x1, y1, z1, x2, y2, z2)
    return AddLightningEx(codeName, checkVisibility, x1, y1, z1, x2, y2, z2)
end

---@param codeName string
---@param checkVisibility boolean
---@param p1 point
---@param p2 point
---@return lightning
function t.exPointAdd(codeName, checkVisibility, p1, p2)
    return t.exAdd(codeName, checkVisibility, Point.getX(p1), Point.getY(p1), Point.getZ(p1), Point.getX(p2), Point.getY(p2), Point.getZ(p2))
end

---@param whichBolt lightning
---@return boolean
function t.destroy(whichBolt)
    return DestroyLightning(whichBolt)
end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@return boolean
function t.move(whichBolt, checkVisibility, x1, y1, x2, y2)
    return MoveLightning(whichBolt, checkVisibility, x1, y1, x2, y2)
end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param p1 point
---@param p2 point
---@return boolean
function t.pointMove(whichBolt, checkVisibility, p1, p2)
    return t.move(whichBolt, checkVisibility, Point.getX(p1), Point.getY(p1), Point.getX(p2), Point.getY(p2))
end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param x1 real
---@param y1 real
---@param z1 real
---@param x2 real
---@param y2 real
---@param z2 real
---@return boolean
function t.exMove(whichBolt, checkVisibility, x1, y1, z1, x2, y2, z2)
    return MoveLightningEx(whichBolt, checkVisibility, x1, y1, z1, x2, y2, z2)
end

---@param whichBolt lightning
---@param checkVisibility boolean
---@param p1 point
---@param p2 point
---@return boolean
function t.exPointMove(whichBolt, checkVisibility, p1, p2)
    return t.exMove(whichBolt, checkVisibility, Point.getX(p1), Point.getY(p1), Point.getZ(p1), Point.getX(p2), Point.getY(p2), Point.getZ(p2))
end

---@param whichBolt lightning
---@return real
function t.getColorA(whichBolt)
    return GetLightningColorA(whichBolt)
end

---@param whichBolt lightning
---@return real
function t.getColorR(whichBolt)
    return GetLightningColorR(whichBolt)
end

---@param whichBolt lightning
---@return real
function t.getColorG(whichBolt)
    return GetLightningColorG(whichBolt)
end

---@param whichBolt lightning
---@return real
function t.getColorB(whichBolt)
    return GetLightningColorB(whichBolt)
end

---@param whichBolt lightning
---@param r real
---@param g real
---@param b real
---@param a real
---@return boolean
function t.setColor(whichBolt, r, g, b, a)
    SetLightningColor(whichBolt, r, g, b, a)
end

return t