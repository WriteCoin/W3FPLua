Point = (function()
    local t = {}

    t.getX = function(p)
        return p.x
    end
    t.getY = function(p)
        return p.y
    end
    t.getZ = function(p)
        return p.z
    end
    t.isBlighted = function(p)
        return IsPointBlighted(t.getX(p), t.getY(p))
    end

    function newPoint(x, y, z)
        local p = {}
        p.x = defaultValue(x, 0)
        p.y = defaultValue(y, 0)
        p.z = defaultValue(z, 0)
        return p
    end

    return t
end)()