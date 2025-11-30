
# effect
tag @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] add pc.temp
scoreboard players set #pass pc.main 1

execute unless entity @n[type=marker,tag=pc.temp,dx=2,dy=200,dz=2] run scoreboard players set #pass pc.main 0
execute as @n[type=marker,tag=pc.temp,dx=2,dy=200,dz=2] unless data entity @s data.select.avail run scoreboard players set #pass pc.main 0

tag @n[type=marker,tag=pc.temp,dx=2,dy=200,dz=2] remove pc.temp
execute if score #pass pc.main matches 0 run return fail
execute if score #pass pc.main matches 1 run return 1