--============================================================================
-- Boolean Expr API ( for compositing trigger conditions and unit filter funcs...)
--============================================================================

local export = {}

local t = export

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function t.And(operandA, operandB)
    return And(operandA, operandB)
end

---@param operandA boolexpr
---@param operandB boolexpr
---@return boolexpr
function t.Or(operandA, operandB)
    return Or(operandA, operandB)
end

---@param operand boolexpr
---@return boolexpr
function t.Not(operand)
    return Not(operand)
end

---@param func code
---@return conditionfunc
function t.condition(func)
    return Condition(func)
end

---@param c conditionfunc
function t.destroyCondition(c)
    DestroyCondition(c)
end

---@param func code
---@return filterfunc
function t.filter(func)
    return Filter(func)
end

---@param f filterfunc
function t.destroyFilter(f)
    DestroyFilter(f)
end

---@param e boolexpr
function t.destroyBoolExpr(e)
    DestroyBoolExpr(e)
end

return t