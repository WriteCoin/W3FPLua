CineFilter = {}

local t = CineFilter

---@param filename string
function t.setTexture(filename)
    SetCineFilterTexture(filename)
end

---@param whichMode blendmode
function t.setBlendMode(whichMode)
    SetCineFilterBlendMode(whichMode)
end

---@param whichFlags texmapflags
function t.setTexMapFlags(whichFlags)
    SetCineFilterTexMapFlags(whichFlags)
end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function t.setStartUV(minu, minv, maxu, maxv)
    SetCineFilterStartUV(minu, minv, maxu, maxv)
end

---@param minu real
---@param minv real
---@param maxu real
---@param maxv real
function t.setEndUV(minu, minv, maxu, maxv)
    SetCineFilterEndUV(minu, minv, maxu, maxv)
end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function t.setStartColor(red, green, blue, alpha)
    SetCineFilterStartColor(red, green, blue, alpha)
end

---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
function t.setEndColor(red, green, blue, alpha)
    SetCineFilterEndColor(red, green, blue, alpha)
end

---@param duration real
function t.setDuration(duration)
    SetCineFilterDuration(duration)
end

---@param flag boolean
function t.display(flag)
    DisplayCineFilter(flag)
end

---@return boolean
function t.isDisplayed()
    IsCineFilterDisplayed()
end

return t