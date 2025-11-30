
# effect
scoreboard players add @s pc.epmax 1

# Appreciate
execute store result score #increase pc.main run data get storage pc:game shop.campfire.increase.epmax
function pc:sys/game/rest_area/purchase/increase {category:"campfire",id:"epmax"}

data modify storage pc:game shop.campfire.is_sell.epmax set value false
function pc:sys/game/rest_area/campfire/refresh/use


# fx
playsound minecraft:block.beacon.activate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]
playsound minecraft:block.amethyst_block.resonate master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]