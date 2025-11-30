
# effect
scoreboard players set #turn.mobs_turn pc.main 1
function pc:sys/object/turn/mob/next

# fx
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] at @s run function pc:sys/player/turn/end/2