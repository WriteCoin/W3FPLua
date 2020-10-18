Point = {
    getX = function(p)
        return p.x
    end,
    getY = function(p)
        return p.y
    end,
    getZ = function(p)
        return p.z
    end,
    isBlighted = function(p)
        return IsPointBlighted(Point.getX(p), Point.getY(p))
    end
}

function newPoint(x,y,z)
    local p = {}
    p.x = defaultValue(x,0)
    p.y = defaultValue(y,0)
    p.z = defaultValue(z,0)
    return p
end