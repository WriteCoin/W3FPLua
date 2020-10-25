local export = {}

local t = export

---@param i integer
---@return camerafield
function t.convert(i)
    return ConvertCameraField(i)
end

t.TargetDistance = t.convert(0)
t.Farz = t.convert(1)
t.AngleOfAttack = t.convert(2)
t.FieldOfView = t.convert(3)
t.Roll = t.convert(4)
t.Rotation = t.convert(5)
t.ZOffset = t.convert(6)
t.Nearz = t.convert(7)
t.LocalPitch = t.convert(8)
t.LocalYaw = t.convert(9)
t.LocalRoll = t.convert(10)

return t