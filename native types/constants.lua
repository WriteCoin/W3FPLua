-- Game constants
local export = {}

export.MaxInventory                = bj_MAX_INVENTORY              ---@type integer
export.MaxPlayers                  = bj_MAX_PLAYERS                ---@type integer

export.PlayerNeutralPassive        = PLAYER_NEUTRAL_PASSIVE        ---@type player
export.PlayerNeutralAggressive     = PLAYER_NEUTRAL_AGGRESSIVE     ---@type player
export.PlayerNeutralVictim         = PLAYER_NEUTRAL_VICTIM         ---@type player
export.PlayerNeutralExtra          = PLAYER_NEUTRAL_EXTRA          ---@type player

export.MaxSlotsPlayer              = bj_MAX_PLAYER_SLOTS           ---@type integer
export.MaxSkeletons                = bj_MAX_SKELETONS              ---@type integer
export.MaxItemStockSlots           = bj_MAX_STOCK_ITEM_SLOTS       ---@type integer
export.MaxUnitStockSlots           = bj_MAX_STOCK_UNIT_SLOTS       ---@type integer
export.MaxItemLevel                = bj_MAX_ITEM_LEVEL             ---@type integer

return  export.MaxInventory,
        export.MaxPlayers,

        export.PlayerNeutralPassive,
        export.PlayerNeutralAggressive,
        export.PlayerNeutralVictim,
        export.PlayerNeutralExtra,

        export.MaxSlotsPlayer,
        export.MaxSkeletons,
        export.MaxItemStockSlots,
        export.MaxUnitStockSlots,
        export.MaxItemLevel