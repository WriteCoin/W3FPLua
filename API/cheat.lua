--============================================================================
local export = {}

---@param cheatStr string
function export.Cheat(cheatStr) 
    Cheat(cheatStr)
end

---@return boolean
function export.IsNoVictoryCheat() 
    return IsNoVictoryCheat()
end

---@return boolean
function export.IsNoDefeatCheat() 
    return IsNoDefeatCheat()
end

return export.Cheat, export.IsNoVictoryCheat, export.IsNoDefeatCheat