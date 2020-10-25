--============================================================================
-- Dialog API

local export = {}

local t = export

---@return dialog
function t.create()
    DialogCreate()
end

---@param whichDialog dialog
function t.destroy(whichDialog)
    DialogDestroy(whichDialog)
end

---@param whichDialog dialog
function t.clear(whichDialog)
    DialogClear(whichDialog)
end

---@param whichDialog dialog
---@param messageText string
function t.setMessage(whichDialog, messageText)
    DialogSetMessage(whichDialog, messageText)
end

---@param whichDialog dialog
---@param buttonText string
---@param hotkey integer
---@return button
function t.addButton(whichDialog, buttonText, hotkey)
    return DialogAddButton(whichDialog, buttonText, hotkey)
end

---@param whichDialog dialog
---@param doScoreScreen boolean
---@param buttonText string
---@param hotkey integer
---@return button
function t.addQuitButton(whichDialog, doScoreScreen, buttonText, hotkey)
    return DialogAddQuitButton(whichDialog, doScoreScreen, buttonText, hotkey)
end

---@param whichPlayer player
---@param whichDialog dialog
---@param flag boolean
function t.display(whichPlayer, whichDialog, flag)
    DialogDisplay(whichPlayer, whichDialog, flag)
end

return t