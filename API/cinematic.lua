Cinematic = {}

local t = Cinematic

---@param portraitUnitId integer
---@param color playercolor
---@param speakerTitle string
---@param text string
---@param sceneDuration real
---@param voiceoverDuration real
function t.setScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
    SetCinematicScene(portraitUnitId, color, speakerTitle, text, sceneDuration, voiceoverDuration)
end

function t.EndScene()
    EndCinematicScene()
end

---@param flag boolean
function t.ForceSubtitles(flag)
    ForceCinematicSubtitles(flag)
end

return t