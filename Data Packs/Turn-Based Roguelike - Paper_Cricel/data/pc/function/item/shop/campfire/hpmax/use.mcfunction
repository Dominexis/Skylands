
# effect
scoreboard players add @s pc.hp 60
scoreboard players add @s pc.hpmax 60

# Appreciate
execute store result score #increase pc.main run data get storage pc:game shop.campfire.increase.hpmax
function pc:sys/game/rest_area/purchase/increase {category:'campfire',id:'hpmax'}

data modify storage pc:game shop.campfire.is_sell.hpmax set value false
function pc:sys/game/rest_area/campfire/refresh/use

# fx
particle minecraft:heart ~ ~1 ~ 0.3 0.6 0.3 0 20 force
playsound minecraft:entity.allay.ambient_with_item master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
playsound minecraft:block.note_block.chime master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1