Dialog = (function()
    local t = {}

    t.create = DialogCreate
    t.destroy = DialogDestroy
    t.clear = DialogClear
    t.setMessage = DialogSetMessage
    t.addButton = DialogAddButton
    t.addQuitButton = DialogAddQuitButton
    t.display = DialogDisplay

    return t
end)()