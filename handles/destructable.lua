Destructable = (function()
    local t = {}

    t.isInvulnerable = IsDestructableInvulnerable
    t.setInvulnerable = SetDestructableInvulnerable

    t.getLife = GetDestructableLife
    t.setLife = SetDestructableLife
    t.life = function(destructable, life)
        if not life then
            return t.getLife(destructable)
        else
            t.setLife(destructable, life)
        end
    end

    t.remove = RemoveDestructable
    t.kill = KillDestructable

    t.getTypeId = GetDestructableTypeId

    t.getX = GetDestructableX
    t.getY = GetDestructableY
    t.getZ = function(destructable)
        Location.move(tempLocation, t.getX(destructable), t.getY(destructable))
        return Location.getZ(tempLocation)
    end
    t.getPoint = function(destructable)
        return newPoint(t.getX(destructable), t.getY(destructable), t.getZ(destructable))
    end

    t.getMaxLife = GetDestructableMaxLife
    t.setMaxLife = SetDestructableMaxLife
    t.maxLife = function(destructable, max)
        if not max then
            return t.getMaxLife(destructable)
        else
            t.setMaxLife(destructable, max)
        end
    end
    t.restoreLife = DestructableRestoreLife

    t.queueAnimation = QueueDestructableAnimation
    t.setAnimation = SetDestructableAnimation
    t.setSpeedAnimation = SetDestructableAnimationSpeed

    t.show = ShowDestructable

    t.getOccluderHeight = GetDestructableOccluderHeight
    t.setOccluderHeight = SetDestructableOccluderHeight

    t.getName = GetDestructableName

    t.coordsCreate = function(objectid, x, y, z, face, scale, variation)
        return CreateDestructableZ(FormatCC(objectid), x, y, z, face, scale, variation)
    end
    t.pointCreate = function(objectid, p, face, scale, variation)
        return t.coordsCreate(objectid, Point.getX(p), Point.getY(p), Point.getZ(p), face, scale, variation)
    end
    t.deadCoordsCreate = function(objectid, x, y, z, face, scale, variation)
        return CreateDeadDestructableZ(FormatCC(objectid), x, y, z, face, scale, variation)
    end
    t.deadPointCreate = function(objectid, p, face, scale, variation)
        return t.deadPointCreate(objectid, Point.getX(p), Point.getY(p), Point.getZ(p), face, scale, variation)
    end

    t.triggered = GetTriggerDestructable
    t.filtered = GetFilterDestructable
    t.enumed = GetEnumDestructable

    return t
end)()