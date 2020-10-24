PlayerColor = {}

local t = PlayerColor

---@param i integer
---@return playercolor
function t.convert(i)
    return ConvertPlayerColor(i)
end

t.Red = t.convert(0)
t.Blue = t.convert(1)
t.Cyan = t.convert(2)
t.Purple = t.convert(3)
t.Yellow = t.convert(4)
t.Orange = t.convert(5)
t.Green = t.convert(6)
t.Pink = t.convert(7)
t.LightGray = t.convert(8)
t.LightBlue = t.convert(9)
t.Aqua = t.convert(10)
t.Brown = t.convert(11)
t.Maroon = t.convert(12)
t.Navy = t.convert(13)
t.Turquoise = t.convert(14)
t.Violet = t.convert(15)
t.Wheat = t.convert(16)
t.Peach = t.convert(17)
t.Mint = t.convert(18)
t.Lavender = t.convert(19)
t.Coal = t.convert(20)
t.Snow = t.convert(21)
t.Emerald = t.convert(22)
t.Peanut = t.convert(23)

return t