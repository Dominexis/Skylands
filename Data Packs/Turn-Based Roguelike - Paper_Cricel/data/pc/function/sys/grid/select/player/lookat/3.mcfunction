
# if (already lookat) :
execute if entity @s[tag=pc.grid.looking] run return fail

# else :
execute as @e[tag=pc.grid.looking,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/select/player/lookat/clear
execute as @e[tag=pc.player.now,type=armor_stand,distance=1..,limit=1] facing entity @s eyes run rotate @s ~180 0
tag @s add pc.grid.looking

# fx
function pc:sys/grid/update
function pc:sys/effect/checker/use