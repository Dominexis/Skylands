
# effect
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.dragonbreath_area"}
execute if score #var pc.main matches ..0 run kill @n[type=minecraft:marker,distance=..1.5,tag=pc.effect.dragonbreath_area]
tag @s remove pc.grid.now

# fx
data modify storage pc:game grid.dragonbreath_area.round set value true