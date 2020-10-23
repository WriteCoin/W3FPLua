PlayerGameResult = (function()
    local t = {}

    t.convert = ConvertPlayerGameResult
    t.Victory = t.convert(0)
    t.Defeat = t.convert(1)
    t.Tie = t.convert(2)
    t.Neutral = t.convert(3)

    return t
end)()