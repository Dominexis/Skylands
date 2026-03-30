
# effect
scoreboard players add @s pc.duration 1
execute if score @s pc.duration matches ..10 at @s run tp @s ^ ^ ^0.5
execute if score @s pc.duration matches ..5 at @s run tp @s ^ ^ ^0.5
execute if score @s pc.duration matches ..2 at @s run tp @s ^ ^ ^0.5

execute if score @s pc.duration matches 15.. run kill @s

# fx
particle minecraft:gust ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:block.calcite.break master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.75 2