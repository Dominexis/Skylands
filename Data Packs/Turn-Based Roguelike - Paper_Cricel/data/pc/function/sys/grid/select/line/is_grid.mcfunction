
# effect
tag @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid] add pc.temp
scoreboard players set #pass pc.main 1

execute unless entity @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.temp] run scoreboard players set #pass pc.main 0
execute as @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.temp] unless data entity @s data.select.avail run scoreboard players set #pass pc.main 0

tag @n[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.temp] remove pc.temp
execute if score #pass pc.main matches 0 run return fail
execute if score #pass pc.main matches 1 run return 1