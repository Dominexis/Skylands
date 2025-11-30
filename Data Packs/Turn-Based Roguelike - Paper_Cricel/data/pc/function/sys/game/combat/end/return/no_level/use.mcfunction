
# Stat
data modify storage pc:game stat.is_win set value {text:"Victory",color:"green"}
function pc:sys/player/stat/use

kill @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=sl.collectible]
execute positioned 2176 17 5453 run function sl:collectible/spawn

# End
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/game/combat/end/return/no_level/player
function pc:sys/lobby/end/clear