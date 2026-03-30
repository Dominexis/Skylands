# As/At : ice_cube
##

execute if entity @s[tag=synb.attr.big] positioned as @e[type=!minecraft:player,type=!minecraft:slime,tag=synb.status.frozen,distance=..3,sort=nearest,limit=1] run tp @s ~0.8 ~ ~0.8
execute if entity @s[tag=synb.attr.small] positioned as @e[type=!minecraft:player,type=!minecraft:slime,tag=synb.status.frozen,distance=..3,sort=nearest,limit=1] run tp @s ~0.25 ~ ~0.25
execute unless entity @e[type=!minecraft:player,tag=synb.status.frozen,distance=..3,sort=nearest,limit=1] run kill @s