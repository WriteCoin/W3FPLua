Camera = (function()
    local t = {}

    

    t.setPosition = SetCameraPosition
    t.setQuickPosition = SetCameraQuickPosition
    t.setBounds = SetCameraBounds
    t.stop = StopCamera
    t.reset = ResetToGameCamera
    t.pan = function(x, y, zOffsetDest)
        if not zOffsetDest then
            PanCameraTo(x, y)
        else
            PanCameraToWithZ(x, y, zOffsetDest)
        end
    end
    t.panTimed = function(x, y, zOffsetDest, duration)
        if not zOffsetDest then
            PanCameraToTimed(x, y, duration)
        else
            PanCameraToTimedWithZ(x, y, zOffsetDest, duration)
        end
    end

    t.setCinematic = SetCinematicCamera
    t.setRotateMode = SetCameraRotateMode
    t.setField = SetCameraField
    t.adjustField = AdjustCameraField
    t.setTargetController = SetCameraTargetController
    t.setOrientController = SetCameraOrientController
    

    t.getBoundMinX = GetCameraBoundMinX
    t.getBoundMinY = GetCameraBoundMinY
    t.getBoundMaxX = GetCameraBoundMaxX
    t.getBoundMaxY = GetCameraBoundMaxY

    t.getTargetX = GetCameraTargetPositionX
    t.getTargetY = GetCameraTargetPositionY
    t.getTargetZ = GetCameraTargetPositionZ
    t.getTargetLocation = function()
        Location.move(tempLocation, t.getTargetX(), t.getTargetY(), t.getTargetZ() )
        return tempLocation
    end
    t.getTargetPoint = function()
        return newPoint( t.getTargetX(), t.getTargetY(), t.getTargetZ() )
    end

    t.getEyeX = GetCameraEyePositionX
    t.getEyeY = GetCameraEyePositionY
    t.getEyeZ = GetCameraEyePositionZ
    t.getEyeLocation = function()
        Location.move( tempLocation, t.getEyeX(), t.getEyeY(), t.getEyeZ() )
        return tempLocation
    end
    t.getEyePoint = function()
        return newPoint( t.getEyeX(), t.getEyeY(), t.getEyeZ() )
    end

    t.EndCinematicScene = EndCinematicScene
    t.forceCinematicSubtitles = ForceCinematicSubtitles

    t.getMargin = GetCameraMargin
    t.setSourceNoise = function(mag, velocity, vertOnly)
        if not vertOnly then
            CameraSetSourceNoise(mag, velocity)
        else
            CameraSetSourceNoiseEx(mag, velocity, vertOnly)
        end
    end
    t.setTargetNoise = function(mag, velocity, vertOnly)
        if not vertOnly then
            CameraSetTargetNoise(mag, velocity)
        else
            CameraSetTargetNoiseEx(mag, velocity, vertOnly)
        end
    end

    t.setSmoothingFactor = CameraSetSmoothingFactor
    
    t.getField = GetCameraField

    return t
end)()