AllianceType = {}

local t = AllianceType

---@param i integer
---@return alliancetype
function t.convert(i)
    return ConvertAllianceType(i)
end

t.Passive = t.convert(0)
t.HelpRequest = t.convert(1)
t.HelpResponse = t.convert(2)
t.SharedXP = t.convert(3)
t.SharedSpells = t.convert(4)
t.SharedVision = t.convert(5)
t.SharedControl = t.convert(6)
t.SharedAdvancedControl = t.convert(7)
t.Rescuable = t.convert(8)
t.SharedVisionForced = t.convert(9)

return t