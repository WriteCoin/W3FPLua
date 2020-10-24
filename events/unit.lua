EventUnit = {}

local t = EventUnit

---@param i integer
---@return unitevent
function t.convert(i)
    return ConvertUnitEvent(i)
end

--===================================================
-- For use with TriggerRegisterUnitEvent
--===================================================

t.Damaged = t.convert(52)
t.Damaging = t.convert(314)
t.Death = t.convert(53)
t.Decay = t.convert(54)
t.Detected = t.convert(55)
t.Hidden = t.convert(56)
t.Selected = t.convert(57)
t.Deselected = t.convert(58)

t.StateLimit = t.convert(59)

-- Events which may have a filter for the "other unit"
--
t.AcquiredTarget = t.convert(60)
t.TargetInRange = t.convert(61)
t.Attacked = t.convert(62)
t.Rescued = t.convert(63)

t.ConstructCancel = t.convert(64)
t.ConstructFinish = t.convert(65)

t.UpgradeStart = t.convert(66)
t.UpgradeCancel = t.convert(67)
t.UpgradeFinish = t.convert(68)

-- Events which involve the specified unit performing
-- training of other units
--
t.TrainStart = t.convert(69)
t.TrainCancel = t.convert(70)
t.TrainFinish = t.convert(71)

t.ResearchStart = t.convert(72)
t.ResearchCancel = t.convert(73)
t.ResearchFinish = t.convert(74)

t.IssuedOrder = t.convert(75)
t.IssuedPointOrder = t.convert(76)
t.IssuedTargetOrder = t.convert(77)

t.HeroLevel = t.convert(78)
t.HeroSkill = t.convert(79)

t.HeroRevivable = t.convert(80)
t.HeroReviveStart = t.convert(81)
t.HeroReviveCancel = t.convert(82)
t.HeroReviveFinish = t.convert(83)

t.Summon = t.convert(84)

t.DropItem = t.convert(85)
t.PickUpItem = t.convert(86)
t.UseItem = t.convert(87)

t.Loaded = t.convert(88)

t.Sell = t.convert(286)
t.ChangeOwner = t.convert(287)
t.SellItem = t.convert(288)
t.SpellChannel = t.convert(289)
t.SpellCast = t.convert(290)
t.SpellEffect = t.convert(291)
t.SpellFinish = t.convert(292)
t.SpellEndCast = t.convert(293)
t.PawnItem = t.convert(294)

return t