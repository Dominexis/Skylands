
# effect
tp @s ^ ^ ^0.25
scoreboard players set #pass pc.main 0
scoreboard players add @s pc.duration 1

execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/ally_player] positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~0.5 ~0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #pass pc.main 1
execute if score @s pc.duration matches 10.. run scoreboard players set #pass pc.main 1
execute if score #pass pc.main matches 1 run kill @s

# fx
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0 0 force