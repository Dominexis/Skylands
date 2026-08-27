# As/At : collectible
##

execute if score t20 synb.TickCycle matches 1 run data modify entity @s transformation.scale set value \
    [0.5f,0.5f,0.5f]
execute if score t20 synb.TickCycle matches 2 run data modify entity @s transformation.scale set value \
    [0.52f,0.52f,0.52f]
execute if score t20 synb.TickCycle matches 3 run data modify entity @s transformation.scale set value \
    [0.54f,0.54f,0.54f]
execute if score t20 synb.TickCycle matches 4 run data modify entity @s transformation.scale set value \
    [0.56f,0.56f,0.56f]
execute if score t20 synb.TickCycle matches 5 run data modify entity @s transformation.scale set value \
    [0.58f,0.58f,0.58f]
execute if score t20 synb.TickCycle matches 6 run data modify entity @s transformation.scale set value \
    [0.6f,0.6f,0.6f]
execute if score t20 synb.TickCycle matches 7 run data modify entity @s transformation.scale set value \
    [0.62f,0.62f,0.62f]
execute if score t20 synb.TickCycle matches 8 run data modify entity @s transformation.scale set value \
    [0.64f,0.64f,0.64f]
execute if score t20 synb.TickCycle matches 9 run data modify entity @s transformation.scale set value \
    [0.66f,0.66f,0.66f]
execute if score t20 synb.TickCycle matches 10 run data modify entity @s transformation.scale set value \
    [0.68f,0.68f,0.68f]
execute if score t20 synb.TickCycle matches 11 run data modify entity @s transformation.scale set value \
    [0.7f,0.7f,0.7f]
execute if score t20 synb.TickCycle matches 12 run data modify entity @s transformation.scale set value \
    [0.68f,0.68f,0.68f]
execute if score t20 synb.TickCycle matches 13 run data modify entity @s transformation.scale set value \
    [0.66f,0.66f,0.66f]
execute if score t20 synb.TickCycle matches 14 run data modify entity @s transformation.scale set value \
    [0.64f,0.64f,0.64f]
execute if score t20 synb.TickCycle matches 15 run data modify entity @s transformation.scale set value \
    [0.62f,0.62f,0.62f]
execute if score t20 synb.TickCycle matches 16 run data modify entity @s transformation.scale set value \
    [0.6f,0.6f,0.6f]
execute if score t20 synb.TickCycle matches 17 run data modify entity @s transformation.scale set value \
    [0.58f,0.58f,0.58f]
execute if score t20 synb.TickCycle matches 18 run data modify entity @s transformation.scale set value \
    [0.56f,0.56f,0.56f]
execute if score t20 synb.TickCycle matches 19 run data modify entity @s transformation.scale set value \
    [0.54f,0.54f,0.54f]
execute if score t20 synb.TickCycle matches 20 run data modify entity @s transformation.scale set value \
    [0.52f,0.52f,0.52f]

data modify storage synb.d:tmp args.particle_color set from entity @s item.components.minecraft:custom_data.color

execute if score t40 synb.TickCycle matches 1..2 positioned ~ ~-0.5 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 3..4 positioned ~ ~-0.4755 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 5..6 positioned ~ ~-0.4045 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 7..8 positioned ~ ~-0.2938 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 9..10 positioned ~ ~-0.1545 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 11..12 positioned ~ ~ ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 13..14 positioned ~ ~0.1545 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 15..16 positioned ~ ~0.2938 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 17..18 positioned ~ ~0.4045 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 19..20 positioned ~ ~0.4755 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 21..22 positioned ~ ~0.5 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 23..24 positioned ~ ~0.4755 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 25..26 positioned ~ ~0.4045 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 27..28 positioned ~ ~0.2938 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 29..30 positioned ~ ~0.1545 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 31..32 positioned ~ ~ ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 33..34 positioned ~ ~-0.1545 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 35..36 positioned ~ ~-0.2938 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 37..38 positioned ~ ~-0.4045 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args
execute if score t40 synb.TickCycle matches 39..40 positioned ~ ~-0.4755 ~ run function synb:elements/collectible/_particles with storage synb.d:tmp args