--============================================================================
-- Widget API

local export = {}

local t = export

---@param whichWidget widget
---@return real
function t.getLife(whichWidget)
    return GetWidgetLife(whichWidget)
end

---@param whichWidget widget
---@param newLife real
function t.setLife(whichWidget, newLife)
    SetWidgetLife(whichWidget, newLife)
end

---@param whichWidget widget
---@return real
function t.getX(whichWidget)
    return GetWidgetX(whichWidget)
end

---@param whichWidget widget
---@return real
function t.getY(whichWidget)
    return GetWidgetY(whichWidget)
end

---@param whichWidget widget
---@return real
function t.getZ(whichWidget)
    nsLocation.move(tempLocation, t.getX(whichWidget), t.getY(whichWidget))
    return nsLocation.getZ(tempLocation)
end

---@param whichWidget widget
---@return location
function t.getLoc(whichWidget)
    return nsLocation.alloc(t.getX(whichWidget), t.getY(whichWidget))
end

---@param whichWidget widget
function t.getPoint(whichWidget)
    return newPoint(t.getX(whichWidget), t.getY(whichWidget), t.getZ(whichWidget))
end

---@return widget
function t.triggered()
    GetTriggerWidget()
end

return t