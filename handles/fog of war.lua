--============================================================================
-- Fog of War API

FogOfWar = {}

local t = FogOfWar

---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
function t.setStateRect(forWhichPlayer, whichState, where, useSharedVision)
    SetFogStateRect(forWhichPlayer, whichState, where, useSharedVision)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerX real
---@param centerY real
---@param radius real
---@param useSharedVision boolean
function t.setStateRadius(forWhichPlayer, whichState, centerX, centerY, radius, useSharedVision)
    SetFogStateRadius(forWhichPlayer, whichState, centerX, centerY, radius, useSharedVision)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerPoint point
---@param radius real
---@param useSharedVision boolean
function t.setStatePointRadius(forWhichPlayer, whichState, centerPoint, radius, useSharedVision)
    t.setStateRadius(forWhichPlayer, whichState, Point.getX(centerPoint), Point.getY(centerPoint), radius, useSharedVision)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius real
---@param useSharedVision boolean
function t.setStateRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision)
    SetFogStateRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision)
end

---@param enable boolean
function t.maskEnable(enable)
    FogMaskEnable(enable)
end

---@return boolean
function t.isMaskEnabled()
    return IsFogMaskEnabled()
end

---@param enable boolean
function t.enable(enable)
    FogEnable(enable)
end

---@return boolean
function t.isEnabled()
    return IsFogEnabled()
end


---@param forWhichPlayer player
---@param whichState fogstate
---@param where rect
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function t.createModifierRect(forWhichPlayer, whichState, where, useSharedVision, afterUnits)
    return CreateFogModifierRect(forWhichPlayer, whichState, where, useSharedVision, afterUnits)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param centerx real
---@param centerY real
---@param radius real
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function t.createModifierRadius(forWhichPlayer, whichState, centerX, centerY, radius, useSharedVision, afterUnits)
    CreateFogModifierRadius(forWhichPlayer, whichState, centerX, centerY, radius, useSharedVision, afterUnits)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center location
---@param radius real
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function t.createModifierLocRadius(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits)
    return CreateFogModifierRadiusLoc(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits)
end

---@param forWhichPlayer player
---@param whichState fogstate
---@param center point
---@param radius real
---@param useSharedVision boolean
---@param afterUnits boolean
---@return fogmodifier
function t.createModifierPointRadius(forWhichPlayer, whichState, center, radius, useSharedVision, afterUnits)
    return t.createModifierRadius(forWhichPlayer, whichState, Point.getX(center), Point.getY(center), radius, useSharedVision, afterUnits)
end

---@param whichFogModifier fogmodifier
function t.destroyModifier(whichFogModifier)
    DestroyFogModifier(whichFogModifier)
end

---@param whichFogModifier fogmodifier
function t.startModifier(whichFogModifier)
    FogModifierStart(whichFogModifier)
end

---@param whichFogModifier fogmodifier
function t.stopModifier(whichFogModifier)
    FogModifierStop(whichFogModifier)
end