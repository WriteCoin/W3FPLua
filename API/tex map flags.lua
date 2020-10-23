TexMapFlags = (function()
    local t = {}

    t.convert = ConvertTexMapFlags
    t.None = t.convert(0)
    t.WrapU = t.convert(1)
    t.WrapV = t.convert(2)
    t.WrapUV = t.convert(3)

    return t
end)()