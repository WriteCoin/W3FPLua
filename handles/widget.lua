Widget = {
    getLife = GetWidgetLife,
    setLife = SetWidgetLife,
    getX = GetWidgetX,
    getY = GetWidgetY,
    getZ = function(widget)
        LocHandle.move(tmpLocHandle, Widget.getX(widget), Widget.getY(widget))
        return LocHandle.getZ(tmpLocHandle)
    end,
    getLocHandle = function(widget)
        return LocHandle.alloc(Widget.getX(widget), Widget.getY(widget))
    end,
    getPoint = function(widget)
        return newPoint(Widget.getX(widget), Widget.getY(widget), Widget.getZ(widget))
    end,
    triggered = GetTriggerWidget
}