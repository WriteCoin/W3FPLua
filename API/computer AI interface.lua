--============================================================================
-- Computer AI interface
--

local export = {}

local t = export

---@param num player
---@param script string
function t.startMelee(num, script)
    StartMeleeAI(num, script)
end

---@param num player
---@param script string
function t.startCampaign(num, script)
    StartCampaignAI(num, script)
end

---@param num player
---@param command integer
---@param data integer
function t.command(num, command, data)
    CommandAI(num, command, data)
end

---@param p player
---@param pause boolean
function t.pauseComp(p, pause)
    PauseCompAI(p, pause)
end

---@param num player
---@return aidifficulty
function t.getDifficulty(num)
    GetAIDifficulty(num)
end


---@param hUnit unit
function t.removeGuardPosition(hUnit)
    RemoveGuardPosition(hUnit)
end

---@param hUnit unit
function t.recycleGuardPosition(hUnit)
    RecycleGuardPosition(hUnit)
end

---@param num player
function t.removeAllGuardPositions(num)
    RemoveAllGuardPositions(num)
end

return t