SpecialEffect = {}

local t = SpecialEffect

---@param modelName string
---@param x real
---@param y real
---@return effect
function t.add(modelName, x, y)
    return AddSpecialEffect(modelName, x, y)
end

---@param modelName string
---@param where location
---@return effect
function t.locAdd(modelName, where)
    return AddSpecialEffectLoc(modelName, where)
end

---@param modelName string
---@param where point
---@return effect
function t.pointAdd(modelName, where)
    return t.add(modelName, Point.getX(where), Point.getY(where))
end

---@param modelName string
---@param targetWidget widget
---@param attachPointName string
---@return effect
function t.targetAdd(modelName, targetWidget, attachPointName)
    AddSpecialEffectTarget(modelName, targetWidget, attachPointName)
end

---@param whichEffect effect
function t.destroy(whichEffect)
    DestroyEffect(whichEffect)
end