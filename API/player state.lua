local export = {}

local t = export

---@param i integer
---@return playerstate
function t.convert(i)
    return ConvertPlayerState(i)
end

t.ResourceGold = t.convert(1)
t.ResourceLumber = t.convert(2)
t.ResourceHeroTokens = t.convert(3)
t.ResourceFoodCap = t.convert(4)
t.ResourceFoodUsed = t.convert(5)
t.FoodCapCeiling = t.convert(6)

t.GivesBounty = t.convert(7)
t.AlliedVictory = t.convert(8)
t.Placed = t.convert(9)
t.OnDeathObserver = t.convert(10)
t.Observer = t.convert(11)
t.Unfollowable = t.convert(12)
-- taxation rate for each resource
--
t.GoldUpkeepRate = t.convert(13)
t.LumberUpkeepRate = t.convert(14)
-- cumulative resources collected by the player during the mission
--
t.GoldGathered = t.convert(15)
t.LumberGathered = t.convert(16)
t.NoCreepSleep = t.convert(25)

return t