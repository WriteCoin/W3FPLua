--============================================================================
-- Camera API

local export = {}

local t = export

---@param x real
---@param y real
function t.setPosition(x, y)
    SetCameraPosition(x, y)
end

---@param x real
---@param y real
function t.setQuickPosition(x, y)
    SetCameraQuickPosition(x, y)
end

---@param x1 real
---@param y1 real
---@param x2 real
---@param y2 real
---@param x3 real
---@param y3 real
---@param x4 real
---@param y4 real
function t.setBounds(x1, y1, x2, y2, x3, y3, x4, y4)
    SetCameraBounds(x1, y1, x2, y2, x3, y3, x4, y4)
end

function t.stop()
    StopCamera()
end

---@param duration real
function t.reset(duration)
    ResetToGameCamera(duration)
end

---@param x real
---@param y real
---@param zOffsetDest real|nil
function t.pan(x, y, zOffsetDest)
    if not zOffsetDest then
        PanCameraTo(x, y)
    else
        PanCameraToWithZ(x, y, zOffsetDest)
    end
end

---@param x real
---@param y real
---@param duration real
---@param zOffsetDest real|nil
function t.panTimed(x, y, duration, zOffsetDest)
    if not zOffsetDest then
        PanCameraToTimed(x, y, duration)
    else
        PanCameraToTimedWithZ(x, y, zOffsetDest, duration)
    end
end

---@param cameraModelFile string
function t.setCinematic(cameraModelFile)
    SetCinematicCamera(cameraModelFile)
end

---@param x real
---@param y real
---@param radiansToSweep real
---@param duration real
function t.setRotateMode(x, y, radiansToSweep, duration)
    SetCameraRotateMode(x, y, radiansToSweep, duration)
end

---@param whichField camerafield
---@param value real
---@param duration real
function t.setField(whichField, value, duration)
    SetCameraField(whichField, value, duration)
end

---@param whichField camerafield
---@param offset real
---@param duration real
function t.adjustField(whichField, offset, duration)
    AdjustCameraField(whichField, offset, duration)
end

---@param whichUnit unit
---@param xoffset real
---@param yoffset real
---@param inheritOrientation boolean
function t.setTargetController(whichUnit, xoffset, yoffset, inheritOrientation)
    SetCameraTargetController(whichUnit, xoffset, yoffset, inheritOrientation)
end

---@param whichUnit unit
---@param xoffset real
---@param yoffset real
function t.setOrientController(whichUnit, xoffset, yoffset)
    SetCameraOrientController(whichUnit, xoffset, yoffset)
end

---@param mag real
---@param velocity real
---@param vertOnly boolean|nil
function t.setTargetNoise(mag, velocity, vertOnly)
    if not vertOnly then
        CameraSetTargetNoise(mag, velocity)
    else
        CameraSetTargetNoiseEx(mag, velocity, vertOnly)
    end
end

---@param mag real
---@param velocity real
---@param vertOnly boolean
function t.setSourceNoise(mag, velocity, vertOnly)
    if not vertOnly then
        CameraSetSourceNoise(mag, velocity)
    else
        CameraSetSourceNoiseEx(mag, velocity, vertOnly)
    end
end

---@param mag real
---@param velocity real
---@param vertOnly boolean
function t.setTargetExNoise(mag, velocity, vertOnly)
    CameraSetTargetNoiseEx(mag, velocity, vertOnly)
end

---@param mag real
---@param velocity real
---@param vertOnly boolean
function t.setSourceExNoise(mag, velocity, vertOnly)
    CameraSetSourceNoiseEx(mag, velocity, vertOnly)
end

---@param factor real
function t.setSmoothingFactor(factor)
    CameraSetSmoothingFactor(factor)
end

---@param whichMargin integer
---@return real
function t.getMargin(whichMargin)
    return GetCameraMargin(whichMargin)
end

-- These return values for the local players camera only...
---@return real
function t.getBoundMinX()
    return GetCameraBoundMinX()
end

---@return real
function t.getBoundMinY()
    return GetCameraBoundMinY()
end

---@return real
function t.getBoundMaxX()
    return GetCameraBoundMaxX()
end

---@return real
function t.getBoundMaxY()
    return GetCameraBoundMaxY()
end

---@param whichField camerafield
---@return real
function t.getField(whichField)
    return GetCameraField(whichField)
end

---@return real
function t.getTargetX()
    return GetCameraTargetPositionX()
end

---@return real
function t.getTargetY()
    return GetCameraTargetPositionY()
end

---@return real
function t.getTargetZ()
    return GetCameraTargetPositionZ()
end

---@return location
function t.getTargetPosLoc()
    return GetCameraTargetPositionLoc()
end

---@return location
function t.getTargetLoc()
    nsLocation.move(tempLocation, t.getTargetX(), t.getTargetY(), t.getTargetZ() )
    return tempLocation
end

function t.getTargetPoint()
    return newPoint( t.getTargetX(), t.getTargetY(), t.getTargetZ() )
end

---@return real
function t.getEyeX()
    return GetCameraEyePositionX()
end

---@return real
function t.getEyeY()
    return GetCameraEyePositionY()
end

---@return real
function t.getEyeZ()
    return GetCameraEyePositionZ()
end

---@return location
function t.getEyePosLoc()
    return GetCameraEyePositionLoc()
end

---@return location
function t.getEyeLoc()
    nsLocation.move( tempLocation, t.getEyeX(), t.getEyeY(), t.getEyeZ() )
    return tempLocation
end

function t.getEyePoint()
    return newPoint( t.getEyeX(), t.getEyeY(), t.getEyeZ() )
end

return t