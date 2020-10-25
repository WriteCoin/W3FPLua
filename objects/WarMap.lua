-- Encapsulates a WC3 map during the compilation stage.
local export = {}

local t = export

---@class warMap

---@return warMap
local function newWarMap()
    local object = {} ---@type warMap
    
    -- /** Reference to all object storage in this map. */
    object.objects = {} ---@type warMapObjects

    return object
end

-- /**
-- * Reads a file from the map. Returns the file contents as a
-- * string upon success, or false + an error message upon failure.
-- *
-- * This function will also "see" any files previously added to the map
-- * via `addFileString`, `addFileDisk` or `addDir`.
-- *
-- * @tupleReturn
-- */
---@param warMap warMap
---@param path string
---@return string|table
function t.readFile(warMap, path) end

-- /**
-- * Adds a directory to the map, preserving the file hierarcy.
-- * Note: the directory will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param warMap warMap
---@param path string
function t.addDir(warMap, path) end

-- /**
-- * Adds a file to the map with the specified content as a string.
-- * Note: the file will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param warMap warMap
---@param archivePath string
---@param contents string
function t.addFileString(warMap, archivePath, contents) end

-- /**
-- * Adds a file to the map, reading it from disk at the specified lcoation.
-- * Note: the file will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param warMap warMap
---@param archivePath string
---@param diskPath string
function t.addFileDisk(warMap, archivePath, diskPath) end

-- /**
-- * Writes the map and all manually added files to the specified directory.
-- */
---@param warMap warMap
---@param path string
function t.writeToDir(warMap, path) end

-- /**
-- * Writes the map and all manually added files to an MPQ archive at the specified path.
-- */
---@param warMap warMap
---@param path string
function t.writeToMpq(warMap, path) end

-- /**
-- * Initializes an object storage for the specified extension type.
-- * This will read objects already present in the map if appropriate.
-- */
---@param warMap warMap
---@param ext string
function t.initObjectStorage(warMap, ext) end

-- /**
-- * Initializes all object storages in the map.
-- */
---@param warMap warMap
function t.initObjects(warMap) end

-- /**
-- * Writes out all the object storages to their respective files in the map.
-- */
---@param warMap warMap
---@param objects warObjects
function t.commitObjectStorage(warMap, objects) end

-- /**
--  * Currently compiling map, if any.
--  * @compiletime
--  */
local currentMap = newWarMap()

return t, newWarMap, currentMap