
function sys:grid/select/clear
execute at @e[tag=pc.player.now,type=armor_stand,limit=1] positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=minecraft:marker,dx=2,dy=200,dz=2,limit=1] at @s run function sys:grid/space/summon/use