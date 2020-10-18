Widget = (function()
    local t = {}

    t.getLife = GetWidgetLife
    t.setLife = SetWidgetLife
    t.getX = GetWidgetX
    t.getY = GetWidgetY
    t.getZ = function(widget)
        LocHandle.move(tmpLocHandle, t.getX(widget), t.getY(widget))
        return LocHandle.getZ(tmpLocHandle)
    end
    t.getLocHandle = function(widget)
        return LocHandle.alloc(t.getX(widget), t.getY(widget))
    end
    t.getPoint = function(widget)
        return newPoint(t.getX(widget), t.getY(widget), t.getZ(widget))
    end
    t.triggered = GetTriggerWidget

    return t
end)()