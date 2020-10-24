EventPlayer = {}

local t = EventPlayer

---@param i integer
---@return playerevent
function t.convert(i)
    return ConvertPlayerEvent(i)
end

---@param i integer
---@return playerunitevent
function t.unitConvert(i)
    return ConvertPlayerUnitEvent(i)
end

--===================================================
-- For use with TriggerRegisterPlayerEvent
--===================================================

t.StateLimit = t.convert(11)
t.AllianceChanged = t.convert(12)

t.Defeat = t.convert(13)
t.Victory = t.convert(14)
t.Leave = t.convert(15)
t.Chat = t.convert(16)
t.EndCinematic = t.convert(17)

--===================================================
-- For use with TriggerRegisterPlayerUnitEvent
--===================================================

t.UnitAttacked = t.unitConvert(18)
t.UnitRescued = t.unitConvert(19)

t.UnitDeath = t.unitConvert(20)
t.UnitDecay = t.unitConvert(21)

t.UnitDetected = t.unitConvert(22)
t.UnitHidden = t.unitConvert(23)

t.UnitSelected = t.unitConvert(24)
t.UnitDeselected = t.unitConvert(25)

t.UnitConstructStart = t.unitConvert(26)
t.UnitConstructCancel = t.unitConvert(27)
t.UnitConstructFinish = t.unitConvert(28)

t.UnitUpgradeStart = t.unitConvert(29)
t.UnitUpgradeCancel = t.unitConvert(30)
t.UnitUpgradeFinish = t.unitConvert(31)

t.UnitTrainStart = t.unitConvert(32)
t.UnitTrainCancel = t.unitConvert(33)
t.UnitTrainFinish = t.unitConvert(34)

t.UnitResearchStart = t.unitConvert(35)
t.UnitResearchCancel = t.unitConvert(36)
t.UnitResearchFinish = t.unitConvert(37)
t.UnitIssuedOrder = t.unitConvert(38)
t.UnitIssuedPointOrder = t.unitConvert(39)
t.UnitIssuedTargetOrder = t.unitConvert(40)
-- for compat
t.UnitIssuedUnitOrder = t.unitConvert(40)

t.HeroLevel = t.unitConvert(41)
t.HeroSkill = t.unitConvert(42)

t.HeroRevivable = t.unitConvert(43)

t.HeroReviveStart = t.unitConvert(44)
t.HeroReviveCancel = t.unitConvert(45)
t.HeroReviveFinish = t.unitConvert(46)
t.UnitSummon = t.unitConvert(47)
t.UnitDropItem = t.unitConvert(48)
t.UnitPickupItem = t.unitConvert(49)
t.UnitUseItem = t.unitConvert(50)

t.UnitLoaded = t.unitConvert(51)
t.UnitDamaged = t.unitConvert(308)
t.UnitDamaging = t.unitConvert(315)

t.ArrowLeftDown = t.convert(261)
t.ArrowLeftUp = t.convert(262)
t.ArrowRightDown = t.convert(263)
t.ArrowRightUp = t.convert(264)
t.ArrowDownDown = t.convert(265)
t.ArrowDownUp = t.convert(266)
t.ArrowUpDown = t.convert(267)
t.ArrowUpUp = t.convert(268)
t.MouseDown = t.convert(305)
t.MouseUp = t.convert(306)
t.MouseMove = t.convert(307)
t.SyncData = t.convert(309)
t.Key = t.convert(311)
t.KeyDown = t.convert(312)
t.KeyUp = t.convert(313)

t.UnitSell = t.unitConvert(269)
t.UnitChangeOwner = t.unitConvert(270)
t.UnitSellItem = t.unitConvert(271)
t.UnitSpellChannel = t.unitConvert(272)
t.UnitSpellCast = t.unitConvert(273)
t.UnitSpellEffect = t.unitConvert(274)
t.UnitSpellFinish = t.unitConvert(275)
t.UnitSpellEndCast = t.unitConvert(276)
t.UnitPawnItem = t.unitConvert(277)

return t