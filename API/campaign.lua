--============================================================================
-- Campaign API

local export = {}

local t = export

---@param cleared boolean
function t.setTutorialCleared(cleared)
    SetTutorialCleared(cleared)
end

---@param campaignNumber integer
---@param missionNumber integer
---@param available boolean
function t.setMissionAvailable(campaignNumber, missionNumber, available)
    SetMissionAvailable(campaignNumber, missionNumber, available)
end

---@param campaignNumber integer
---@param available boolean
function t.setCampaignAvailable(campaignNumber, available)
    SetCampaignAvailable(campaignNumber, available)
end

---@param campaignNumber integer
---@param available boolean
function t.setOpCinematicAvailable(campaignNumber, available)
    SetOpCinematicAvailable(campaignNumber, available)
end

---@param campaignNumber integer
---@param available boolean
function t.setEdCinematicAvailable(campaignNumber, available)
    SetEdCinematicAvailable(campaignNumber, available)
end

---@return gamedifficulty
function t.getDefaultDifficulty()
    return GetDefaultDifficulty()
end

---@param g gamedifficulty
function t.setDefaultDifficulty(g)
    SetDefaultDifficulty(g)
end

---@param whichButton integer
---@param visible boolean
function t.setCustomCampaignButtonVisible(whichButton, visible)
    SetCustomCampaignButtonVisible(whichButton, visible)
end

---@param whichButton integer
---@return boolean
function t.getCustomCampaignButtonVisible(whichButton)
    return GetCustomCampaignButtonVisible(whichButton)
end

function t.DoNotSaveReplay()
    DoNotSaveReplay()
end

return t