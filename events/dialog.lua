EventDialog = {}

local t = EventDialog

---@param i integer
---@return dialogevent
function t.convert(i)
    return ConvertDialogEvent(i)
end

t.ButtonClick = t.convert(90)
t.Click = t.convert(91)

return t