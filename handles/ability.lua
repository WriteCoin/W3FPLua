local export = {}
    
local t = export

---@param abilCode integer
---@param tooltip string
---@param level integer
function t.setTooltip(abilCode, tooltip, level)
    BlzSetAbilityTooltip(FormatCC(abilCode), tooltip, level)
end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function t.setExtendedTooltip(abilCode, extendedTooltip, level)
    BlzSetAbilityExtendedTooltip(FormatCC(abilCode), extendedTooltip, level)
end

---@param abilCode integer
---@param tooltip string
---@param level integer
function t.setActivatedTooltip(abilCode, tooltip, level)
    BlzSetAbilityActivatedTooltip(FormatCC(abilCode), tooltip, level)
end

---@param abilCode integer
---@param extendedTooltip string
---@param level integer
function t.setActivatedExtendedTooltip(abilCode, extendedTooltip, level)
    BlzSetAbilityActivatedExtendedTooltip(FormatCC(abilCode), extendedTooltip, level)
end

---@param abilCode integer
---@param researchTooltip string
---@param level integer
function t.setResearchTooltip(abilCode, researchTooltip, level)
    BlzSetAbilityResearchTooltip(FormatCC(abilCode), researchTooltip, level)
end

---@param abilCode integer
---@param researchExtendedTooltip string
---@param level integer
function t.setResearchExtendedTooltip(abilCode, researchExtendedTooltip, level)
    BlzSetAbilityResearchExtendedTooltip(FormatCC(abilCode), researchExtendedTooltip, level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getTooltip(abilCode, level)
    return BlzGetAbilityTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getActivatedTooltip(abilCode, level)
    return BlzGetAbilityActivatedTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getExtendedTooltip(abilCode, level)
    return BlzGetAbilityExtendedTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getActivatedExtendedTooltip(abilCode, level)
    return BlzGetAbilityActivatedExtendedTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getResearchTooltip(abilCode, level)
    return BlzGetAbilityResearchTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param level integer
---@return string
function t.getResearchExtendedTooltip(abilCode, level)
    return BlzGetAbilityResearchExtendedTooltip(FormatCC(abilCode), level)
end

---@param abilCode integer
---@param iconPath string
function t.setIcon(abilCode, iconPath)
    BlzSetAbilityIcon(FormatCC(abilCode), iconPath)
end

---@param abilCode integer
---@return string
function t.getIcon(abilCode)
    return BlzGetAbilityIcon(FormatCC(abilCode))
end

---@param abilCode integer
---@param iconPath string
function t.setActivatedIcon(abilCode, iconPath)
    BlzSetAbilityActivatedIcon(FormatCC(abilCode), iconPath)
end

---@param abilCode integer
---@return string
function t.getActivatedIcon(abilCode)
    return BlzGetAbilityActivatedIcon(FormatCC(abilCode))
end

---@param abilCode integer
---@return integer
function t.getPosX(abilCode)
    return BlzGetAbilityPosX(FormatCC(abilCode))
end

---@param abilCode integer
---@return integer
function t.getPosY(abilCode)
    return BlzGetAbilityPosY(FormatCC(abilCode))
end

---@param abilCode integer
---@param x integer
function t.setPosX(abilCode, x)
    BlzSetAbilityPosX(FormatCC(abilCode), x)
end

---@param abilCode integer
---@param y integer
function t.setPosY(abilCode, y)
    BlzSetAbilityPosY(FormatCC(abilCode), y)
end

---@param abilCode integer
---@return integer
function t.getActivatedPosX(abilCode)
    return BlzGetAbilityActivatedPosX(FormatCC(abilCode))
end

---@param abilCode integer
---@return integer
function t.getActivatedPosY(abilCode)
    return BlzGetAbilityActivatedPosY(FormatCC(abilCode))
end

---@param abilCode integer
---@param x integer
function t.setActivatedPosX(abilCode, x)
    BlzSetAbilityActivatedPosX(FormatCC(abilCode), x)
end

---@param abilCode integer
---@param y integer
function t.setActivatedPosY(abilCode, y)
    BlzSetAbilityActivatedPosY(FormatCC(abilCode), y)
end

---@param abilId integer
---@param level integer
---@return integer
function t.getManaCost(abilId, level)
    return BlzGetAbilityManaCost(FormatCC(abilId), level)
end

---@param abilId integer
---@param level integer
---@return real
function t.getCooldown(abilId, level)
    return BlzGetAbilityCooldown(FormatCC(abilId), level)
end

-- Instanced Object Operations
-- Ability
---@param whichAbility ability
---@param whichField abilitybooleanfield|abilitybooleanlevelfield|abilitybooleanlevelarrayfield
---@param level integer|nil
---@param index integer|nil
---@return boolean
function t.getBooleanField(whichAbility, whichField, level, index)
    if not level then
        return BlzGetAbilityBooleanField(whichAbility, whichField)
    else
        if not index then
            return BlzGetAbilityBooleanLevelField(whichAbility, whichField, level)
        else
            return BlzGetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index)
        end
    end
end

---@param whichAbility ability
---@param whichField abilityintegerfield|abilitystringlevelfield|abilityintegerlevelarrayfield
---@param level integer|nil
---@param index integer|nil
---@return integer
function t.getIntegerField(whichAbility, whichField, level, index)
    if not level then
        return BlzGetAbilityIntegerField(whichAbility, whichField)
    else
        if not index then
            return BlzGetAbilityIntegerLevelField(whichAbility, whichField, level)
        else
            return BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index)
        end
    end
end

---@param whichAbility ability
---@param whichField abilityrealfield|abilityreallevelfield|abilityreallevelarrayfield
---@param level integer|nil
---@param index integer|nil
---@return real
function t.getRealField(whichAbility, whichField, level, index)
    if not level then
        return BlzGetAbilityRealField(whichAbility, whichField)
    else
        if not index then
            return BlzGetAbilityRealLevelField(whichAbility, whichField, level)
        else
            return BlzGetAbilityRealLevelArrayField(whichAbility, whichField, level, index)
        end
    end
end

---@param whichAbility ability
---@param whichField abilitystringfield|abilitystringlevelfield|abilitystringlevelarrayfield
---@param level integer|nil
---@param index integer|nil
---@return string
function t.getStringField(whichAbility, whichField, level, index)
    if not level then
        return BlzGetAbilityStringField(whichAbility, whichField)
    else
        if not index then
            return BlzGetAbilityStringLevelField(whichAbility, whichField, level)
        else
            return BlzGetAbilityStringLevelArrayField(whichAbility, whichField, level, index)
        end
    end
end

---@param whichAbility ability
---@param whichField abilitybooleanfield|abilitybooleanlevelfield|abilitybooleanlevelarrayfield
---@param value boolean
---@param level integer|nil
---@param index integer|nil
---@return boolean
function t.setBooleanField(whichAbility, whichField, value, level, index)
    if not level then
        return BlzSetAbilityBooleanField(whichAbility, whichField, value)
    else
        if not index then
            return BlzSetAbilityBooleanLevelField(whichAbility, whichField, level, value)
        else
            return BlzSetAbilityBooleanLevelArrayField(whichAbility, whichField, level, index, value)
        end
    end
end

---@param whichAbility ability
---@param whichField abilityintegerfield|abilityintegerlevelfield|abilityintegerlevelarrayfield
---@param value integer
---@param level integer|nil
---@param index integer|nil
---@return boolean
function t.setIntegerField(whichAbility, whichField, value, level, index)
    if not level then
        return BlzSetAbilityIntegerField(whichAbility, whichField, value)
    else
        if not index then
            return BlzSetAbilityIntegerLevelField(whichAbility, whichField, level, value)
        else
            return BlzSetAbilityIntegerLevelArrayField(whichAbility, whichField, level, index, value)
        end
    end
end

---@param whichAbility ability
---@param whichField abilityrealfield|abilityreallevelfield|abilityreallevelarrayfield
---@param value real
---@param level integer|nil
---@param index integer|nil
---@return boolean
function t.setRealField(whichAbility, whichField, value, level, index)
    if not level then
        return BlzSetAbilityRealField(whichAbility, whichField, value)
    else
        if not level then
            return BlzSetAbilityRealLevelField(whichAbility, whichField, level, value)
        else
            return BlzSetAbilityRealLevelArrayField(whichAbility, whichField, level, index, value)
        end
    end
end

---@param whichAbility ability
---@param whichField abilitystringfield|abilitystringlevelfield|abilitystringlevelarrayfield
---@param value string
---@param level integer|nil
---@param index integer|nil
---@return boolean
function t.setStringField(whichAbility, whichField, value, level, index)
    if not level then
        return BlzSetAbilityStringField(whichAbility, whichField, value)
    else
        if not level then
            return BlzSetAbilityStringLevelField(whichAbility, whichField, level, value)
        else
            return BlzSetAbilityStringLevelArrayField(whichAbility, whichField, level, index, value)
        end
    end
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function t.addBooleanField(whichAbility, whichField, level, value)
    return BlzAddAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function t.addIntegerField(whichAbility, whichField, level, value)
    return BlzAddAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function t.addRealField(whichAbility, whichField, level, value)
    return BlzAddAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function t.addStringField(whichAbility, whichField, level, value)
    return BlzAddAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitybooleanlevelarrayfield
---@param level integer
---@param value boolean
---@return boolean
function t.removeBooleanField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityBooleanLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityintegerlevelarrayfield
---@param level integer
---@param value integer
---@return boolean
function t.removeIntegerField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityIntegerLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilityreallevelarrayfield
---@param level integer
---@param value real
---@return boolean
function t.removeRealField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityRealLevelArrayField(whichAbility, whichField, level, value)
end

---@param whichAbility ability
---@param whichField abilitystringlevelarrayfield
---@param level integer
---@param value string
---@return boolean
function t.removeStringField(whichAbility, whichField, level, value)
    return BlzRemoveAbilityStringLevelArrayField(whichAbility, whichField, level, value)
end

---@param abilityString string
---@param t effecttype
---@param index integer
---@return string
function t.getEffect(abilityString, t, index)
    return GetAbilityEffect(abilityString, t, index)
end

---@param abilityId integer
---@param t effecttype
---@param index integer
---@return string
function t.getByIdEffect(abilityId, t, index)
    return GetAbilityEffectById(abilityId, t, index)
end

---@param abilityString string
---@param t soundtype
---@return string
function t.getSound(abilityString, t)
    return GetAbilitySound(abilityString, t)
end

---@param abilityId integer
---@param t soundtype
---@return string
function t.getByIdSound(abilityId, t)
    return GetAbilitySoundById(abilityId, t)
end

-- Not currently working correctly...
---@param abilityIdString string
---@return integer
function t.id(abilityIdString)
    return AbilityId(abilityIdString)
end

---@param abilityId integer
---@return string
function t.ToStringId(abilityId)
    return AbilityId2String(FormatCC(abilityId))
end

return t