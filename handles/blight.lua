Blight = (function()
    local t = {}

    t.setAreaCoords = SetBlight
    t.setAreaPoint = function(whichPlayer, p, radius, addBlight)
        t.setAreaCoords(whichPlayer, Point.getX(p), Point.getY(p), radius, addBlight)
    end
    t.setCoords = SetBlightPoint
    t.setPoint = function(whichPlayer, p, addBlight)
        t.setCoords(whichPlayer, Point.getX(p), Point.getY(p), addBlight)
    end

    return t
end)()