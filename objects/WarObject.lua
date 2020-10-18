WarObject = {}

function newWarObject()
    local objWar = {}

    -- All fields available on this object
    objWar.all = {}

    -- This object's id as a string.
    objWar.id = ''

    -- Parent's id as a string. Undefined if this object has no parent, i.e. 
    -- it is defined by WC3 data itself.
    objWar.parentId = ''

    -- This object's type.
    objWar.type = ''

    return objWar
end

-- Clones this object, creating an independent instance of it.
-- This instance can then be assigned into a `WarObjects` object
-- to insert it into the map.
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
function WarObject.getField(objWar, field) end

-- /**
--  * Sets a field on this object.
--  *
--  * See `getField` for field name syntax.
--  *
--  * Setting a field into null/undefined will reset it to its default value.
--  */
function WarObject.setField(objWar, field, value) end