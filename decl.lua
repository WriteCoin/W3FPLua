---@class null:nil

---@param func function
---@return boolean
function compiletime(func) end

WarObject = {}

---@class objectWar
---@return objectWar
function newWarObject()
    local objWar = {} ---@type objectWar

    -- All fields available on this object
    objWar.all = {}

    -- This object's id as a string.
    objWar.id = ''

    -- Parent's id as a string. Undefined if this object has no parent, i.e. 
    -- it is defined by WC3 data itself.
    objWar.parentId = '' ---@type string|nil

    -- This object's type.
    objWar.type = ''

    return objWar
end


-- Clones this object, creating an independent instance of it.
-- This instance can then be assigned into a `WarObjects` object
-- to insert it into the map.
---@param objWar objectWar
---@return objectWar
function WarObject.clone(objWar) end

-- /**
--  * Gets a field on this object.
--  *
--  * Two syntaxes are accepted for the `field` parameter:
--  * 1) SLK-like, where fields have a 'proper' name, sometimes postfixed with
--  * a number to indicate which level of the field to get/set. Examples include,
--  * `Name`, `DataA1`, `DataC10`, etc.
--  * 2) Raw, using a four-character rawid, optionally with a `+X` postfix
--  * to indicate which level to use, for fields which can have multiple levels.
--  * E.g.: `unam`, `xxxx+1`, `xxxx+10`
--  *
--  * The returned value will be automatically converted to the appropriate type.
--  * WC3 has 4 fundamental types for fields:
--  * real - standard float value
--  * unreal - float value clamped between 0.0 and 1.0
--  * int - standard signed integer value
--  * string - null-terminated string
--  *
--  * Setting a field into null/undefined will reset it to its default value.
--  */
---@param objWar objectWar
---@param field string
---@return string|number
function WarObject.getField(objWar, field) end

-- /**
--  * Sets a field on this object.
--  *
--  * See `getField` for field name syntax.
--  *
--  * Setting a field into null/undefined will reset it to its default value.
--  */
---@param objWar objectWar
---@param field string
---@param value string|number
function WarObject.setField(objWar, field, value) end


ObjectsWar = {}

---@class objectsWar
---@return objectsWar
function newObjectsWar()
    local obj = {} ---@type objectsWar

    -- /** All WC3 objects of this type in the map. Meant for iteration. */
    obj.all = {}

    -- /** Extension string for this WC3 object type. */
    obj.ext = ''

    -- /** Type string for this WC3 object type. */
    obj.typestr = ''

    -- /** Marker whether any object data here has been modified since loading. Used by Ceres to prevent writing out unmodified object stores. */
    obj.isDirty = false

    return obj
end

-- /**
-- * Reads WC3 objects from the supplied string into this object.
-- * The expected format is that of WC3 object data files, which is the same for all object data types.
-- */
---@param objsWar objectsWar
---@param data string
function ObjectsWar.readFromString(objsWar, data) end

-- /**
-- * Writes the WC3 objects contained in this object out into the string.
-- * The resulting format is that of WC3 object data files, which is the same for all object data types.
-- */
---@param objsWar objectsWar
---@return string
function ObjectsWar.writeToString(objsWar) end

-- /**
-- * Gets a reference to a WC3 object inside this storage.
-- *
-- * Index is a rawid. Upon getting an object, you get a
-- * reference which you can use to mutate it.
-- *
-- * For example:
-- *
-- * // getting a reference to an object
-- * let myFoo = currentMap.objects.units['hfoo'] as WarObject
-- * // this will mutate the 'hfoo' unit
-- * myFoo['Name'] = "Crab"
-- * // this will create a clone of the "Crab" 'hfoo' with the id 'xxxx'
-- * currentMap.objects.units['xxxx'] = myFoo
-- *
-- * // this will get a clone instead, which won't modify the original object
-- * let myPea = (currentMap.objects.units['hpea'] as WarObject).clone()
-- * // this will only modify the clone now
-- * myPea['Name'] = "Arnold"
-- * currentMap.objects.units['yyyy'] = myPea
-- */
---@param objsWar objectsWar
---@param rawid string
---@return objectWar
function ObjectsWar.getObject(objsWar, rawid) end

-- /**
-- * Sets a WC3 object into this storage.
-- *
-- * Index is a rawid.
-- *
-- * When setting an object, Ceres will clone the target
-- * and set the clone's id to that specified here.
-- *
-- * Setting an object into null/undefined will reset it to defaults for a stock
-- * object, and delete it for a custom object.
-- *
-- * See `getObject` fore example usage.
-- */
---@param objsWar objectsWar
---@param rawid string
---@param object objectWar
function ObjectsWar.setObject(objsWar, rawid, object) end

-- Encapsulates all objects of all types in a map.
WarMapObjects = {}

---@class objsMapWar
---@return objsMapWar
function newWarMapObjects()
    local obj = {} ---@type objsMapWar
    obj.ability = newWarObject()
    obj.item = newWarObject()
    obj.unit = newWarObject()
    obj.destructable = newWarObject()
    obj.doodad = newWarObject()
    obj.buff = newWarObject()
    obj.upgrade = newWarObject()
    return obj
end


-- Encapsulates a WC3 map during the compilation stage.
MapWar = {}

---@class objWarMap
---@return objWarMap
function newMapWar()
    local obj = {} ---@type objWarMap

    -- /** Reference to all object storage in this map. */
    obj.objects = newWarMapObjects()

    

    return obj
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
---@param objWarMap objWarMap
---@param path string
---@return string|table
function MapWar.readFile(objWarMap, path) end

-- /**
-- * Adds a directory to the map, preserving the file hierarcy.
-- * Note: the directory will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param objWarMap objWarMap
---@param path string
function MapWar.addDir(objWarMap, path) end

-- /**
-- * Adds a file to the map with the specified content as a string.
-- * Note: the file will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param objWarMap objWarMap
---@param archivePath string
---@param contents string
function MapWar.addFileString(objWarMap, archivePath, contents) end

-- /**
-- * Adds a file to the map, reading it from disk at the specified lcoation.
-- * Note: the file will only be written when writeToDir() or writeToMpq() has been called.
-- */
---@param objWarMap objWarMap
---@param archivePath string
---@param diskPath string
function MapWar.addFileDisk(objWarMap, archivePath, diskPath) end

-- /**
-- * Writes the map and all manually added files to the specified directory.
-- */
---@param objWarMap objWarMap
---@param path string
function MapWar.writeToDir(objWarMap, path) end

-- /**
-- * Writes the map and all manually added files to an MPQ archive at the specified path.
-- */
---@param objWarMap objWarMap
---@param path string
function MapWar.writeToMpq(objWarMap, path) end

-- /**
-- * Initializes an object storage for the specified extension type.
-- * This will read objects already present in the map if appropriate.
-- */
---@param objWarMap objWarMap
---@param ext string
function MapWar.initObjectStorage(objWarMap, ext) end

-- /**
-- * Initializes all object storages in the map.
-- */
---@return objectWar
function MapWar.initObjects() end

-- /**
-- * Writes out all the object storages to their respective files in the map.
-- */
---@param objects objectWar
function MapWar.commitObjectStorage(objects) end

-- /**
--  * Currently compiling map, if any.
--  * @compiletime
--  */
currentMap = newMapWar()