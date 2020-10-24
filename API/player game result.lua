PlayerGameResult = {}

local t = PlayerGameResult

---@param i integer
---@return playergameresult
function t.convert(i)
    return ConvertPlayerGameResult(i)
end

t.Victory = t.convert(0)
t.Defeat = t.convert(1)
t.Tie = t.convert(2)
t.Neutral = t.convert(3)

return t