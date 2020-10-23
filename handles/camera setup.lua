CameraSetup = (function()
    local t = {}

    t.create = CreateCameraSetup
    t.getField = CameraSetupGetField
    t.setField = CameraSetupSetField
    t.getDestPositionX = CameraSetupGetDestPositionX
    t.getDestPositionY = CameraSetupGetDestPositionY
    t.getDestPositionZ = function(whichCameraSetup)
        Location.move(tempLocation, t.getDestPositionX(whichCameraSetup), t.getDestPositionY(whichCameraSetup))
        return Location.getZ(tempLocation)
    end

    t.setDestCoordsPos = CameraSetupSetDestPosition
    t.setDestPoint = function(whichCameraSetup, p, duration)
        return t.setDestCoordsPos(whichCameraSetup, Point.getX(p), Point.getY(p), duration)
    end
    t.getDestPoint = function(whichCameraSetup)
        return newPoint( t.getDestPositionX(whichCameraSetup), t.getDestPositionY(whichCameraSetup), t.getDestPositionZ(whichCameraSetup) )
    end

    t.destLocation = function(whichCameraSetup, location, duration)
        if not (location or duration) then
            Location.move(tempLocation, t.getDestPositionX(whichCameraSetup), t.getDestPositionY(whichCameraSetup) )
            return tempLocation
        else
            t.setDestCoordsPos(whichCameraSetup, Location.getX(location), Location.getY(location), duration)
        end
    end
    t.destPoint = function(whichCameraSetup, p, duration)
        if not (p or duration) then
            return newPoint(t.getDestPositionX(whichCameraSetup), t.getDestPositionY(whichCameraSetup), t.getDestPositionZ(whichCameraSetup) )
        else
            t.setDestCoordsPos(whichCameraSetup, Point.getX(p), Point.getY(p), duration)
        end
    end

    t.apply = CameraSetupApply
    t.withZApply = CameraSetupApplyWithZ
    t.ForceDurationApply = CameraSetupApplyForceDuration
    t.withZForceDurationApply = CameraSetupApplyForceDurationWithZ
    t.smoothForceDurationApply = BlzCameraSetupApplyForceDurationSmooth

    return t
end)()