local export = {}

local t = export

---@param x real
---@param y real
---@param radius real
---@param depth real
---@param duration integer
---@param permanent boolean
---@return terraindeformation
function t.crater(x, y, radius, depth, duration, permanent)
    return TerrainDeformCrater(x, y, radius, depth, duration, permanent)
end

---@param x real
---@param y real
---@param radius real
---@param depth real
---@param duration integer
---@param count integer
---@param spaceWaves real
---@param timeWaves real
---@param radiusStartPct real
---@param limitNeg boolean
---@return terraindeformation
function t.ripple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg)
    return TerrainDeformRipple(x, y, radius, depth, duration, count, spaceWaves, timeWaves, radiusStartPct, limitNeg)
end

---@param x real
---@param y real
---@param dirX real
---@param dirY real
---@param distance real
---@param speed real
---@param radius real
---@param depth real
---@param trailTime integer
---@param count integer
---@return terraindeformation
function t.wave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count)
    return TerrainDeformWave(x, y, dirX, dirY, distance, speed, radius, depth, trailTime, count)
end

---@param x real
---@param y real
---@param radius real
---@param minDelta real
---@param maxDelta real
---@param duration integer
---@param updateInterval integer
---@return terraindeformation
function t.random(x, y, radius, minDelta, maxDelta, duration, updateInterval)
    return TerrainDeformRandom(x, y, radius, minDelta, maxDelta, duration, updateInterval)
end

---@param deformation terraindeformation
---@param duration integer
function t.stop(deformation, duration)
    TerrainDeformStop(deformation, duration)
end

function t.stopAll()
    TerrainDeformStopAll()
end

return t