
# if (already lookat) :
execute if entity @s[tag=pc.grid.looking] run return fail

# else :
execute as @e[tag=pc.grid.looking,type=minecraft:marker,limit=1] at @s run function sys:grid/select/player/lookat/clear
execute as @e[tag=pc.player.now,type=armor_stand,distance=1..,limit=1] facing entity @s eyes run rotate @s ~180 0
tag @s add pc.grid.looking

# fx
function sys:grid/update
function sys:effect/checker/use