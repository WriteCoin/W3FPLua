local export = {}

local t = export

---@param i integer
---@return texmapflags
function t.convert(i)
    return ConvertTexMapFlags(i)
end

t.None = t.convert(0)
t.WrapU = t.convert(1)
t.WrapV = t.convert(2)
t.WrapUV = t.convert(3)

return t