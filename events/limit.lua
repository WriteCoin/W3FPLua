--===================================================
-- Limit Event API s
-- variable, player state, game state, and unit state events
-- ( do NOT change the order of these... )
--===================================================
LimitOp = (function()
    local t = {}

    ---@param i integer
    ---@return limitop
    function t.convert(i)
        return ConvertLimitOp(i)
    end

    t.LessThan = t.convert(0)
    t.LessThanOrEqual = t.convert(1)
    t.Equal = t.convert(2)
    t.GreaterThanOrEqual = t.convert(3)
    t.GreaterThan = t.convert(4)
    t.NotEqual = t.convert(5)

    return t
end)()