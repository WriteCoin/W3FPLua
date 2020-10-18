function FormatCC(id)
    if type(id) == 'integer' then
        return id
    elseif type(id) == 'string' then
        return FourCC(id)
    end
end
require 'W3FPLua.handles.handle'
require 'W3FPLua.handles.location'
require 'W3FPLua.handles.point'
require 'W3FPLua.handles.widget'
require 'W3FPLua.handles.player state'
require 'W3FPLua.handles.race'
require 'W3FPLua.handles.player color'
require 'W3FPLua.handles.alliance type'
require 'W3FPLua.handles.player game result'
require 'W3FPLua.handles.player'
require 'W3FPLua.handles.button'
require 'W3FPLua.handles.dialog'
require 'W3FPLua.handles.destructable'
require 'W3FPLua.handles.camera field'
require 'W3FPLua.handles.blend mode'
require 'W3FPLua.handles.tex map flags'
require 'W3FPLua.handles.camera'
require 'W3FPLua.handles.camera margin'
require 'W3FPLua.handles.cine filter'
require 'W3FPLua.handles.camera setup'
require 'W3FPLua.handles.automation test'
require 'W3FPLua.handles.blight'