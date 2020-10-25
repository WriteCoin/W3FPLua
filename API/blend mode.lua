local export = {}

local t = export

---@param i integer
---@return blendmode
function t.convert(i)
    return ConvertBlendMode(i)
end

t.None = t.convert(0)
t.DontCare = t.convert(0)
t.KeyAlpha = t.convert(1)
t.Blend = t.convert(2)
t.Additive = t.convert(3)
t.Modulate = t.convert(4)
t.Modulate2X = t.convert(5)

return t