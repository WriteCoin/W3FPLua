Race = (function()
    local t = {}

    t.convert = ConvertRace
    t.Human = t.convert(1)
    t.Orc = t.convert(2)
    t.Undead = t.convert(3)
    t.NightElf = t.convert(4)
    t.Demon = t.convert(5)
    t.Other = t.convert(7)

    return t
end)()