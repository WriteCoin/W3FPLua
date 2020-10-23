CineFilter = (function()
    local t = {}

    t.isVisible = IsCineFilterDisplayed
    t.setVisible = DisplayCineFilter

    t.setTexture = SetCineFilterTexture
    t.setBlendMode = SetCineFilterBlendMode
    t.setTexMapFlags = SetCineFilterTexMapFlags
    t.setStartUV = SetCineFilterStartUV
    t.setEndUV = SetCineFilterEndUV
    t.setStartColor = SetCineFilterStartColor
    t.setEndColor = SetCineFilterEndColor
    t.setDuration = SetCineFilterDuration
    t.setScene = SetCinematicScene

    return t
end)()