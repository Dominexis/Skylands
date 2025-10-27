execute positioned ~-34 ~65 ~92 if entity @p[dx=-25,dy=10,dz=-32,predicate=sl:player] run scoreboard players add #hay itspungpond98.clock 1

execute if score #hay itspungpond98.clock matches 60.. run scoreboard players set #hay itspungpond98.clock 0

execute if score #hay itspungpond98.clock matches 5 run fill ~-46 ~65 ~79 ~-47 ~66 ~80 minecraft:air
execute if score #hay itspungpond98.clock matches 35 run fill ~-46 ~65 ~79 ~-47 ~66 ~80 minecraft:hay_block[axis=y]

execute if score #hay itspungpond98.clock matches 5 run fill ~-56 ~65 ~72 ~-57 ~66 ~73 minecraft:air
execute if score #hay itspungpond98.clock matches 35 run fill ~-56 ~65 ~72 ~-57 ~66 ~73 minecraft:hay_block[axis=y]