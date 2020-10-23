EventWidget = (function()
    local t = {}

    ---@param i integer
    ---@return widgetevent
    function t.convert(i)
        return ConvertWidgetEvent(i)
    end

    t.Death = t.convert(89)

    return t
end)()