--============================================================================
-- Player API

nsPlayer = {}

local t = {}

---@param number integer
---@return player
function t.getPlayer(number)
    return Player(number)
end

---@return player
function t.getLocal()
    return GetLocalPlayer()
end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function t.isAlly(whichPlayer, otherPlayer)
    return IsPlayerAlly(whichPlayer, otherPlayer)
end

---@param whichPlayer player
---@param otherPlayer player
---@return boolean
function t.isEnemy(whichPlayer, otherPlayer)
    return IsPlayerEnemy(whichPlayer, otherPlayer)
end

---@param whichPlayer player
---@param whichForce force
---@return boolean
function t.isInForce(whichPlayer, whichForce)
    return IsPlayerInForce( whichPlayer, whichForce)
end

---@param whichPlayer player
---@return boolean
function t.isObserver(whichPlayer)
    return IsPlayerObserver(whichPlayer)
end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function t.isCoordsVisible(x, y, whichPlayer)
    return IsVisibleToPlayer(x, y, whichPlayer)
end

---@param p point
---@param whichPlayer player
---@return boolean
function t.isPointVisible(p, whichPlayer)
    return t.isCoordsVisible(Point.getX(p), Point.getY(p), player)
end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function t.isLocationVisible(whichLocation, whichPlayer)
    return IsLocationVisibleToPlayer(whichLocation, whichPlayer)
end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function t.isCoordsFogged(x, y, whichPlayer)
    return IsFoggedToPlayer(x, y, whichPlayer)
end

---@param p point
---@param whichPlayer player
---@return boolean
function t.isPointFogged(p, whichPlayer)
    return t.isCoordsFogged(Point.getX(p), Point.getY(p), whichPlayer)
end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function t.isLocationFogged(whichLocation, whichPlayer)
    return IsLocationFoggedToPlayer(whichLocation, whichPlayer)
end

---@param x real
---@param y real
---@param whichPlayer player
---@return boolean
function t.isCoordsMasked(x, y, whichPlayer)
    return IsMaskedToPlayer(x, y, whichPlayer)
end

---@param p point
---@param whichPlayer player
---@return boolean
function t.isPointMasked(p, whichPlayer)
    return t.isCoordsMasked(Point.getX(p), Point.getY(p), whichPlayer)
end

---@param whichLocation location
---@param whichPlayer player
---@return boolean
function t.isLocationMasked(whichLocation, whichPlayer)
    return IsLocationMaskedToPlayer(whichLocation, whichPlayer)
end

---@param whichPlayer player
---@return race
function t.getRace(whichPlayer)
    return GetPlayerRace(whichPlayer)
end

---@param whichPlayer player
---@return integer
function t.getId(whichPlayer)
    return GetPlayerId(whichPlayer)
end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function t.getUnitCount(whichPlayer, includeIncomplete)
    return GetPlayerUnitCount(whichPlayer, includeIncomplete)
end

---@param whichPlayer player
---@param unitName string
---@param includeIncomplete boolean
---@param includeUpgrades boolean
---@return integer
function t.getTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades)
    return GetPlayerTypedUnitCount(whichPlayer, unitName, includeIncomplete, includeUpgrades)
end

---@param whichPlayer player
---@param includeIncomplete boolean
---@return integer
function t.getStructureCount(whichPlayer, includeIncomplete)
    return GetPlayerStructureCount(whichPlayer, includeIncomplete)
end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@return integer
function t.getState(whichPlayer, whichPlayerState)
    return GetPlayerState(whichPlayer, whichPlayerState)
end

---@param whichPlayer player
---@param whichPlayerScore playerscore
---@return integer
function t.getScore(whichPlayer, whichPlayerScore)
    return GetPlayerScore(whichPlayer, whichPlayerScore)
end

---@param sourcePlayer player
---@param otherPlayer player
---@param whichAllianceSetting alliancetype
---@return boolean
function t.getAlliance(sourcePlayer, otherPlayer, whichAllianceSetting)
    return GetPlayerAlliance(sourcePlayer, otherPlayer, whichAllianceSetting)
end


---@param whichPlayer player
---@return real
function t.getHandicap(whichPlayer)
    return GetPlayerHandicap(whichPlayer)
end

---@param whichPlayer player
---@return real
function t.getXPHandicap(whichPlayer)
    return GetPlayerHandicapXP(whichPlayer)
end

---@param whichPlayer player
---@param handicap real
function t.setHandicap(whichPlayer, handicap)
    SetPlayerHandicap(whichPlayer, handicap)
end

---@param whichPlayer player
---@param handicap real
function t.setXPHandicap(whichPlayer, handicap)
    SetPlayerHandicapXP(whichPlayer, handicap)
end

---@param whichPlayer player
---@param handicap real|nil
---@return real|nil
function t.handicap(whichPlayer, handicap)
    if not handicap then
        return t.getHandicap(whichPlayer)
    else
        t.setHandicap(whichPlayer, handicap)
    end
end

---@param whichPlayer player
---@param handicap real|nil
---@return real|nil
function t.XPHandicap(whichPlayer, handicap)
    if not handicap then
        return t.getXPHandicap(whichPlayer)
    else
        t.setXPHandicap(whichPlayer, handicap)
    end
end


---@param whichPlayer player
---@param techid integer
---@param maximum integer
function t.setTechMaxAllowed(whichPlayer, techid, maximum)
    SetPlayerTechMaxAllowed(whichPlayer, FormatCC(techid), maximum)
end

---@param whichPlayer player
---@param techid integer
---@return integer
function t.getTechMaxAllowed(whichPlayer, techid)
    return GetPlayerTechMaxAllowed(whichPlayer, FormatCC(techid))
end

---@param whichPlayer player
---@param techid integer
---@param maximum integer|nil
---@return integer|nil
function t.techMaxAllowed(whichPlayer, techid, maximum)
    techid = FormatCC(techid)
    if not maximum then
        return t.getTechMaxAllowed(whichPlayer, techid)
    else
        t.setTechMaxAllowed(whichPlayer, techid, maximum)
    end
end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function t.addTechResearched(whichPlayer, techid, levels)
    AddPlayerTechResearched(whichPlayer, FormatCC(techid), levels)
end

---@param whichPlayer player
---@param techid integer
---@param setToLevel integer
function t.setTechResearched(whichPlayer, techid, setToLevel)
    SetPlayerTechResearched(whichPlayer, FormatCC(techid), setToLevel)
end

---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return boolean
function t.getTechResearched(whichPlayer, techid, specificonly)
    return GetPlayerTechResearched(whichPlayer, FormatCC(techid), specificonly)
end

function t.techResearched(whichPlayer, techid, setToLevel_OR_specificonly)
    techid = FormatCC(techid)
    if type(setToLevel_OR_specificonly) == 'boolean' then
        return t.getTechResearched(whichPlayer, techid, setToLevel_OR_specificonly)
    else
        t.setTechResearched(whichPlayer, techid, setToLevel_OR_specificonly)
    end
end


---@param whichPlayer player
---@param techid integer
---@param specificonly boolean
---@return integer
function t.getTechCount(whichPlayer, techid, specificonly)
    return GetPlayerTechCount(whichPlayer, FormatCC(techid), specificonly)
end


---@param whichPlayer player
---@param newOwner integer
function t.setUnitsOwner(whichPlayer, newOwner)
    SetPlayerUnitsOwner(whichPlayer, newOwner)
end

---@param whichPlayer player
---@param toWhichPlayers force
---@param flag boolean
function t.cripple(whichPlayer, toWhichPlayers, flag)
    CripplePlayer(whichPlayer, toWhichPlayers, flag)
end


---@param whichPlayer player
---@param abilid integer
---@param avail boolean
function t.setAbilityAvailable(whichPlayer, abilid, avail)
    SetPlayerAbilityAvailable(whichPlayer, FormatCC(abilid), avail)
end


---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer
function t.setState(whichPlayer, whichPlayerState, value)
    SetPlayerState(whichPlayer, whichPlayerState, value)
end

---@param whichPlayer player
---@param whichPlayerState playerstate
---@param value integer|nil
---@return integer|nil
function t.state(whichPlayer, whichPlayerState, value)
    if not value then
        return t.getState(whichPlayer, whichPlayerState)
    else
        t.setState(whichPlayer, whichPlayerState, value)
    end
end

---@param whichPlayer player
---@param gameResult playergameresult
function t.remove(whichPlayer, gameResult)
    RemovePlayer(whichPlayer, gameResult)
end


-- Used to store hero level data for the scorescreen
-- before units are moved to neutral passive in melee games
--
---@param whichPlayer player
function t.cacheHeroData(whichPlayer)
    CachePlayerHeroData(whichPlayer)
end

---@param whichPlayer player
---@param techid integer
---@param levels integer
function t.decTechResearched(whichPlayer, techid, levels)
    BlzDecPlayerTechResearched(whichPlayer, FormatCC(techid), levels)
end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return integer
function t.requestExtraIntegerData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
    RequestExtraIntegerData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return boolean
function t.requestExtraBooleanData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
    RequestExtraBooleanData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return string
function t.requestExtraStringData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
    RequestExtraStringData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
end

---@param dataType integer
---@param whichPlayer player
---@param param1 string
---@param param2 string
---@param param3 boolean
---@param param4 integer
---@param param5 integer
---@param param6 integer
---@return real
function t.requestExtraRealData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
    RequestExtraRealData(dataType, whichPlayer, param1, param2, param3, param4, param5, param6)
end

---@return player
function t.triggered()
    return GetTriggerPlayer()
end

---@return player
function t.filtered()
    return GetFilterPlayer()
end

---@return player
function t.enumed()
    return GetEnumPlayer()
end

return t