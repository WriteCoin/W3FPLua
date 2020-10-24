WeatherEffect = {}

local t = WeatherEffect

---@param where rect
---@param effectID integer
---@return weathereffect
function t.add(where, effectID)
    AddWeatherEffect(where, effectID)
end

---@param whichEffect weathereffect
function t.remove(whichEffect)
    RemoveWeatherEffect(whichEffect)
end

---@param whichEffect weathereffect
---@param enable boolean
function t.enable(whichEffect, enable)
    EnableWeatherEffect(whichEffect, enable)
end

return t