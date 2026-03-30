
# effect
function pc:sys/player/select/mob/clear
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=!pc.player,predicate=pc:object/all] at @s run function pc:sys/object/intent/icon/self/use