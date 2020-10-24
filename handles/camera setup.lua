CameraSetup = {}

local t = CameraSetup

---@return camerasetup
function t.create()
    return CreateCameraSetup()
end

---@param whichSetup camerasetup
---@param whichField camerafield
---@param value real
---@param duration real
function t.setField(whichSetup, whichField, value, duration)
    CameraSetupSetField(whichSetup, whichField, value, duration)
end

---@param whichSetup camerasetup
---@param whichField camerafield
---@return real
function t.getField(whichSetup, whichField)
    return CameraSetupGetField(whichSetup, whichField)
end


t.getDestPositionZ = function(whichCameraSetup)
    nsLocation.move(tempLocation, t.getDestPositionX(whichCameraSetup), t.getDestPositionY(whichCameraSetup))
    return nsLocation.getZ(tempLocation)
end

---@param whichSetup camerasetup
---@return location
function t.getDestPositionLoc(whichSetup)
    return CameraSetupGetDestPositionLoc(whichSetup)
end

---@param whichSetup camerasetup
---@return real
function t.getDestPositionX(whichSetup)
    return CameraSetupGetDestPositionX(whichSetup)
end

---@param whichSetup camerasetup
---@return real
function t.getDestPositionY(whichSetup)
    return CameraSetupGetDestPositionY(whichSetup)
end

---@param whichSetup camerasetup
---@return real
function t.getDestPositionZ(whichSetup)
    nsLocation.move(tempLocation, t.getDestPositionX(whichSetup), t.getDestPositionY(whichSetup))
    return nsLocation.getZ(tempLocation)
end

---@param whichSetup camerasetup
---@return point
function t.getDestPositionPoint(whichSetup)
    return newPoint( t.getDestPositionX(whichSetup), t.getDestPositionY(whichSetup), t.getDestPositionZ(whichSetup) )
end

---@param whichSetup camerasetup
---@param x real
---@param y real
---@param duration real
function t.setDestPosition(whichSetup, x, y, duration)
    CameraSetupSetDestPosition(whichSetup, x, y, duration)
end

---@param whichSetup camerasetup
---@param p point
---@param duration real
function t.setDestPointPosition(whichSetup, p, duration)
    t.setDestPosition(whichSetup, Point.getX(p), Point.getY(p), duration)
end

---@param whichSetup camerasetup
---@param doPan boolean
---@param panTimed boolean
function t.apply(whichSetup, doPan, panTimed)
    CameraSetupApply(whichSetup, doPan, panTimed)
end

---@param whichSetup camerasetup
---@param zDestOffset real
function t.withZApply(whichSetup, zDestOffset)
    CameraSetupApplyWithZ(whichSetup, zDestOffset)
end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forceDuration real
function t.ForceDurationApply(whichSetup, doPan, forceDuration)
    CameraSetupApplyForceDuration(whichSetup, doPan, forceDuration)
end

---@param whichSetup camerasetup
---@param zDestOffset real
---@param forceDuration real
function t.withZForceDurationApply(whichSetup, zDestOffset, forceDuration)
    CameraSetupApplyForceDurationWithZ(whichSetup, zDestOffset, forceDuration)
end

---@param whichSetup camerasetup
---@param doPan boolean
---@param forcedDuration real
---@param easeInDuration real
---@param easeOutDuration real
---@param smoothFactor real
function t.smoothForceDurationApply(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
    BlzCameraSetupApplyForceDurationSmooth(whichSetup, doPan, forcedDuration, easeInDuration, easeOutDuration, smoothFactor)
end

return t