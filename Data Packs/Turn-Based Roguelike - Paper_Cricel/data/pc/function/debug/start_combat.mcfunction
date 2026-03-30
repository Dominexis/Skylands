
# return inventory
execute as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/data/load
execute as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s if score $game.combat.start pc.main matches 1 run function pc:sys/item/return/inventory
execute as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/data/save

# effect
function pc:sys/game/combat/clear
$function pc:game/minecraft/$(id)/setup
function pc:sys/game/combat/start/use