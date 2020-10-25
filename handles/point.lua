---@class point

local export = {}

local t = export

---@param p point
---@return real
function t.getX(p)
    return p.x
end

---@param p point
---@return real
function t.getY(p)
    return p.y
end

---@param p point
---@return real
function t.getZ(p)
    return p.z
end

function t.isBlighted(p)
    return IsPointBlighted(t.getX(p), t.getY(p))
end

local function newPoint(x, y, z)
    local p = {} ---@type point
    p.x = defaultValue(tonumber(x), 0)
    p.y = defaultValue(tonumber(y), 0)
    p.z = defaultValue(tonumber(z), 0)
    return p
end

return t, newPoint