LocHandle = {
    getX = GetLocationX,
    getY = GetLocationY,
    move = MoveLocation,
    setX = function(location, newX)
        LocHandle.move(location, newX, LocHandle.getY(location))
    end,
    setY = function(location, newY)
        LocHandle.move(location, LocHandle.getX(location), newY)
    end,
    getZ = GetLocationZ,
    remove = RemoveLocation,
    alloc = Location
}
tmpLocHandle = LocHandle.alloc(0,0)