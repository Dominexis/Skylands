
function pc:sys/grid/select/clear
execute at @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=minecraft:marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:sys/grid/space/summon/use