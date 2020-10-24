SpellEffect = {}

local t = SpellEffect

---@param abilityString string
---@param t effecttype
---@param x real
---@param y real
---@return effect
function t.add(abilityString, t, x, y)
    return AddSpellEffect(abilityString, t, x, y)
end

---@param abilityString string
---@param t effecttype
---@param where location
---@return effect
function t.locAdd(abilityString, t, where)
    return AddSpellEffectLoc(abilityString, t, where)
end

---@param abilityString string
---@param tf effecttype
---@param where point
---@return effect
function t.pointAdd(abilityString, tf, where)
    return t.add(abilityString, tf, Point.getX(where), Point.getY(where))
end

---@param abilityId integer
---@param t effecttype
---@param x real
---@param y real
---@return effect
function t.byIdAdd(abilityId, t, x, y)
    return AddSpellEffectById(abilityId, t, x, y)
end

---@param abilityId integer
---@param t effecttype
---@param where location
---@return effect
function t.byIdLocAdd(abilityId, t, where)
    return AddSpellEffectByIdLoc(abilityId, t, where)
end

---@param abilityId integer
---@param tf effecttype
---@param where point
---@return effect
function t.byIdPointAdd(abilityId, tf, where)
    return t.byIdAdd(abilityId, tf, Point.getX(where), Point.getY(where))
end

---@param modelName string
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function t.targetAdd(modelName, t, targetWidget, attachPoint)
    return AddSpellEffectTarget(modelName, t, targetWidget, attachPoint)
end

---@param abilityId integer
---@param t effecttype
---@param targetWidget widget
---@param attachPoint string
---@return effect
function t.byIdTargetAdd(abilityId, t, targetWidget, attachPoint)
    return AddSpellEffectTargetById(abilityId, t, targetWidget, attachPoint)
end