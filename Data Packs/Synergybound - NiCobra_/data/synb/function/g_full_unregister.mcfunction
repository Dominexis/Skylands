##

execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player] run function synb:itemengine/player/quit

function synb:status/g_unregister
function synb:itemengine/g_unregister
function synb:enemies/g_unregister
function synb:utils/visuals/g_unregister
function synb:arenasys/g_unregister
function synb:elements/g_unregister
function synb:pools/g_unregister
function synb:world/g_unregister

# Kill all entities
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.type.death_detector]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item_display,tag=synb.type.collectible]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:text_display,tag=synb.type.text]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.item_associate]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.deco]

scoreboard objectives remove synb.TickCycle

scoreboard objectives remove synb.Tmp.Expr
scoreboard objectives remove synb.Tmp.Arg
scoreboard objectives remove synb.Tmp.Ctx
data remove storage synb.d:tmp args
data remove storage synb.d:tmp ctx

scoreboard objectives remove synb.Const
scoreboard objectives remove synb.Info

# Values
data remove storage synb.d:values map_active
data remove storage synb.d:values money_item_components