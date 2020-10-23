--===================================================
-- Game, Player and Unit Events
--
--  When an event causes a trigger to fire these
--  values allow the action code to determine which
--  event was dispatched and therefore which set of
--   functions should be used to get information
--  about the event.
--
-- Do NOT change the order or value of these s
-- without insuring that the JASS_GAME_EVENTS_WAR3 enum
-- is changed to match.
--
--===================================================

EventGame = (function()
    local t = {}

    ---@param i integer
    ---@return gameevent
    function t.convert(i)
        return ConvertGameEvent(i)
    end

    --===================================================
    -- For use with TriggerRegisterGameEvent
    --===================================================
    t.Victory = t.convert(0)
    t.EndLevel = t.convert(1)

    t.VariableLimit = t.convert(2)
    t.StateLimit = t.convert(3)

    t.TimerExpired = t.convert(4)

    t.EnterRegion = t.convert(5)
    t.LeaveRegion = t.convert(6)

    t.TrackableHit = t.convert(7)
    t.TrackableTrack = t.convert(8)

    t.ShowSkill = t.convert(9)
    t.BuildSubmenu = t.convert(10)

    --===================================================
    -- Frozen Throne Expansion Events
    -- Need to be added here to preserve compat
    --===================================================
    t.Loaded = t.convert(256)
    t.TournamentFinishSoon = t.convert(257)
    t.TournamentFinishNow = t.convert(258)
    t.Save = t.convert(259)
    t.CustomUIFrame = t.convert(310)

    return t
end)()