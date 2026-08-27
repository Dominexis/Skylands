
execute if entity @s[tag=pc.void] run return fail

execute if score @s pc.duration matches ..20 anchored eyes facing entity @e[tag=pc.entity.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute if score @s pc.duration matches 21.. anchored eyes facing entity @e[tag=pc.entity.target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] feet positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^ ^0.5 ~ ~
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=pc.entity.target,dx=0,dy=0,dz=0,limit=1,type=!minecraft:giant] positioned ~-1 ~-99.5 ~-1 at @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] run function pc:item/skill/warrior/yama_double/fx/3

# fx
function pc:item/skill/warrior/yama_double/fx/flame/use