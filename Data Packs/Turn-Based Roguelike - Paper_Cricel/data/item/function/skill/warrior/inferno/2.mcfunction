
tag @e[tag=pc.grid.in_range,type=marker] remove pc.grid.in_range
data modify storage pc:temp range set value {type:'3x3',mode:'in_range'}
function sys:grid/range/use

execute positioned ~-5.5 ~-100 ~-5.5 as @e[tag=pc.grid.in_range,type=marker,dx=10,dy=200,dz=10] at @s run function item:skill/warrior/inferno/2b

# fx
playsound minecraft:block.campfire.crackle master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.campfire.crackle master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.generic.explode master @a ~ ~1024 ~ 0 1.5 0.25
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0.6 0.5

particle lava ~ ~0.5 ~ 2 0 2 0 50 force