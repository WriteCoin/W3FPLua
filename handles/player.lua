nsPlayer = (function()
    local t = {}

    t.isAlly = IsPlayerAlly
    t.isEnemy = IsPlayerEnemy
    t.inForce = IsPlayerInForce
    t.isObserver = IsPlayerObserver

    t.isCoordsVisible = IsVisibleToPlayer
    t.isPointVisisble = function(p, player)
        return t.coordsVisible(Point.getX(p), Point.getY(p), player)
    end
    t.isLocationVisible = IsLocationVisibleToPlayer

    t.isCoordsFogged = IsFoogedToPlayer
    t.isPointFogged = function(p, player)
        return t.coordsFogged(Point.getX(p), Point.getY(p), player)
    end
    t.isLocationFogged = IsLocationFoggedToPlayer

    t.isCoordsMasked = IsMaskedToPlayer
    t.isPointMasked = function(p, player)
        return t.coordsMasked(Point.getX(p), Point.getY(p), player)
    end
    t.isLocationMasked = IsLocationMaskedToPlayer

    t.getRace = GetPlayerRace
    t.getId = GetPlayerId
    t.getUnitCount = GetPlayerUnitCount
    t.getTypedUnitCount = GetPlayerTypedUnitCount
    t.getStructureCount = GetPlayerStructureCount
    t.state = function(player, whichPlayerState, value)
        if not value then
            return GetPlayerState(player, whichPlayerState)
        else
            SetPlayerState(player, whichPlayerState, value)
        end
    end
    t.getScore = GetPlayerScore
    t.getAlliance = GetPlayerAlliance
    t.handicap = function(player, handicap)
        if not handicap then
            return GetPlayerHandicap(player)
        else
            SetPlayerHandicap(player, handicap)
        end
    end
    t.XPHandicap = function(player, handicap)
        if not handicap then
            return GetPlayerHandicapXP(player)
        else
            SetPlayerHandicapXP(player, handicap)
        end
    end
    t.techMaxAllowed = function(player, techid, maximum)
        techid = FormatCC(techid)
        if not maximum then
            return GetPlayerTechMaxAllowed(player, techid)
        else
            SetPlayerTechMaxAllowed(player, techid, maximum)
        end
    end
    t.addTechResearched = function(player, techid, levels)
        AddPlayerTechResearched(player, FormatCC(techid), levels)
    end
    t.decTechResearched = function(player, techid, levels)
        BlzDecPlayerTechResearched(player, FormatCC(techid), levels)
    end
    t.techResearched = function(player, techid, setToLevel_OR_specificonly)
        techid = FormatCC(techid)
        if type(setToLevel_OR_specificonly) == 'boolean' then
            return GetPlayerTechResearched(player, techid, setToLevel_OR_specificonly)
        else
            SetPlayerTechResearched(player, techid, setToLevel_OR_specificonly)
        end
    end
    t.techCount = function(player, techid, specificonly)
        return GetPlayerTechCount(player, FormatCC(techid), specificonly)
    end
    t.setUnitsOwner = SetPlayerUnitsOwner
    t.cripple = CripplePlayer
    t.setAbilityAvailable = function(player, abilid, avail)
        SetPlayerAbilityAvailable(player, FormatCC(abilid), avail)
    end
    t.remove = RemovePlayer
    t.cacheHeroData = CachePlayerHeroData
    t.requestExtraIntegerData = RequestExtraIntegerData
    t.requestExtraBooleanData = RequestExtraBooleanData
    t.requestExtraStringData = RequestExtraStringData
    t.requestExtraRealData = RequestExtraRealData

    t.getLocal = GetLocalPlayer
    t.triggered = GetTriggerPlayer
    t.get = Player
    Player = Player

    return t
end)()