
# System
function pc:sys/game/combat/clear
scoreboard players set $game.combat.start pc.main 1
scoreboard players set $game.round pc.main 0
scoreboard players set #index pc.object_id 0

    # forcelaod
function pc:sys/game/combat/start/forceload with storage pc:game combat.coord

# Player
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/game/combat/start/player with storage pc:game combat.coord
function pc:sys/utils/schedule/use {func:"function pc:sys/game/combat/start/2 with storage pc:game combat.coord",delay:2}
schedule function pc:sys/game/combat/start/3 1s