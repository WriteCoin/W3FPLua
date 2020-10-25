-- dependencies
require 'OtherFunctions.index'

-- import

-- objects
compiletime                         = require 'W3FPLua.objects.compiletime'
WarObject, newWarObject             = require 'W3FPLua.objects.WarObject'
WarObjects, newWarObjects           = require 'W3FPLua.objects.WarObjects'
WarMapObjects, newWarMapObjects     = require 'W3FPLua.objects.WarMapObjects'
WarMap, newWarMap, currentMap       = require 'W3FPLua.objects.WarMap'

-- Native types
require 'W3FPLua.native types.native types'

MaxInventory,
MaxPlayers,

PlayerNeutralPassive,
PlayerNeutralAggressive,
PlayerNeutralVictim,
PlayerNeutralExtra,

MaxSlotsPlayer,
MaxSkeletons,
MaxItemStockSlots,
MaxUnitStockSlots,
MaxItemLevel            = require 'W3FPLua.native types.constants'

FourCC,
FormatCC,
OrderId,
OrderId2String,
GetObjectName           = require 'W3FPLua.native types.id conversions'

-- API
AllianceType                                = require 'W3FPLua.API.alliance type'
AutomationTest                              = require 'W3FPLua.API.automation test'
BlendMode                                   = require 'W3FPLua.API.blend mode'
CameraField                                 = require 'W3FPLua.API.camera field'
CameraMargin                                = require 'W3FPLua.API.camera margin'
Campaign                                    = require 'W3FPLua.API.campaign'
Cheat, IsNoVictoryCheat, IsNoDefeatCheat    = require 'W3FPLua.API.cheat'
CineFilter                                  = require 'W3FPLua.API.cine filter'
Cinematic                                   = require 'W3FPLua.API.cinematic'
AI                                          = require 'W3FPLua.API.computer AI interface'
Doodad                                      = require 'W3FPLua.API.doodad'
PlayerColor                                 = require 'W3FPLua.API.player color'
PlayerGameResult                            = require 'W3FPLua.API.player game result'
PlayerState                                 = require 'W3FPLua.API.player state'
Race                                        = require 'W3FPLua.API.race'
TexMapFlags                                 = require 'W3FPLua.API.tex map flags'

-- Constants

-- Events
EventGame       = require 'W3FPLua.events.game'
EventPlayer     = require 'W3FPLua.events.player'
EventUnit       = require 'W3FPLua.events.unit'
EventWidget     = require 'W3FPLua.events.widget'
EventDialog     = require 'W3FPLua.events.dialog'
LimitOp         = require 'W3FPLua.events.limit'

-- Fields

-- Handles
Handle                          = require 'W3FPLua.handles.handle'
nsLocation, tempLocation        = require 'W3FPLua.handles.location'
Point, newPoint                 = require 'W3FPLua.handles.point'
Widget                          = require 'W3FPLua.handles.widget'
nsPlayer                        = require 'W3FPLua.handles.player'
Button                          = require 'W3FPLua.handles.button'
Dialog                          = require 'W3FPLua.handles.dialog'
Destructable                    = require 'W3FPLua.handles.destructable'
Camera                          = require 'W3FPLua.handles.camera'
SetupCamera                     = require 'W3FPLua.handles.camera setup'
Blight                          = require 'W3FPLua.handles.blight'
Ability                         = require 'W3FPLua.handles.ability'
BooleanExpr                     = require 'W3FPLua.handles.boolean expr'
Unit                            = require 'W3FPLua.handles.unit'
WeatherEffect                   = require 'W3FPLua.handles.weather effect'
TerrainDeformation              = require 'W3FPLua.handles.terrain deformation'
SpecialEffect                   = require 'W3FPLua.handles.special effect'
SpellEffect                     = require 'W3FPLua.handles.spell effect'
Lightning                       = require 'W3FPLua.handles.lightning'
FogOfWar                        = require 'W3FPLua.handles.fog of war'