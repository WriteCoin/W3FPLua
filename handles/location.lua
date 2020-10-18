nsLocation = (function()
    local t = {}

    t.getX = GetLocationX
    t.getY = GetLocationY
    t.move = MoveLocation
    t.setX = function(location, newX)
        t.move(location, newX, t.getY(location))
    end
    t.setY = function(location, newY)
        t.move(location, t.getX(location), newY)
    end
    t.getZ = GetLocationZ
    t.remove = RemoveLocation
    t.alloc = Location
    Location = Location

    tempLocation = t.alloc(0,0)

    return t
end)()