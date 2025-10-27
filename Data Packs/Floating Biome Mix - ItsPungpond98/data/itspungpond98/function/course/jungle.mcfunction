execute positioned ~15 ~65 ~-64 if entity @p[dx=24,dy=10,dz=-27,predicate=sl:player] run scoreboard players add #bamboo itspungpond98.clock 1
execute if score #bamboo itspungpond98.clock matches 60.. run scoreboard players set #bamboo itspungpond98.clock 0

#Grow
execute if score #bamboo itspungpond98.clock matches 1 run setblock ~27 ~66 ~-88 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 4 run setblock ~27 ~67 ~-88 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 7 run setblock ~27 ~68 ~-88 minecraft:bamboo_block[axis=y]

execute if score #bamboo itspungpond98.clock matches 11 run setblock ~31 ~66 ~-87 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 14 run setblock ~31 ~67 ~-87 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 17 run setblock ~31 ~68 ~-87 minecraft:bamboo_block[axis=y]

execute if score #bamboo itspungpond98.clock matches 21 run setblock ~32 ~66 ~-83 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 24 run setblock ~32 ~67 ~-83 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 27 run setblock ~32 ~68 ~-83 minecraft:bamboo_block[axis=y]

execute if score #bamboo itspungpond98.clock matches 31 run setblock ~35 ~66 ~-80 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 34 run setblock ~35 ~67 ~-80 minecraft:bamboo_block[axis=y]
execute if score #bamboo itspungpond98.clock matches 37 run setblock ~35 ~68 ~-80 minecraft:bamboo_block[axis=y]

#Destroy
execute if score #bamboo itspungpond98.clock matches 41 run fill ~27 ~66 ~-88 ~27 ~68 ~-88 minecraft:air
execute if score #bamboo itspungpond98.clock matches 51 run fill ~31 ~66 ~-87 ~31 ~68 ~-87 minecraft:air
execute if score #bamboo itspungpond98.clock matches 1 run fill ~32 ~66 ~-83 ~32 ~68 ~-83 minecraft:air
execute if score #bamboo itspungpond98.clock matches 11 run fill ~35 ~66 ~-80 ~35 ~68 ~-80 minecraft:air