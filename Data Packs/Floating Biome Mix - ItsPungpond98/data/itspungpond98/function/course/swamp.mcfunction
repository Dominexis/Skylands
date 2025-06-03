execute positioned ~61 ~76 ~35 if entity @p[dx=26,dy=15,dz=26,predicate=sl:player] run scoreboard players add #flower itspungpond98.clock 1
execute if score #flower itspungpond98.clock matches 80.. run scoreboard players set #flower itspungpond98.clock 1

execute if score #flower itspungpond98.clock matches 1 run clone ~55 ~68 ~38 ~55 ~66 ~38 ~79 ~76 ~44
execute if score #flower itspungpond98.clock matches 21 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~79 ~76 ~44
execute if score #flower itspungpond98.clock matches 41 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~79 ~76 ~44
execute if score #flower itspungpond98.clock matches 61 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~79 ~76 ~44

execute if score #flower itspungpond98.clock matches 1 run clone ~55 ~68 ~38 ~55 ~66 ~38 ~81 ~76 ~52
execute if score #flower itspungpond98.clock matches 6 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~81 ~76 ~52
execute if score #flower itspungpond98.clock matches 31 run clone ~55 ~68 ~38 ~55 ~66 ~38 ~81 ~76 ~52
execute if score #flower itspungpond98.clock matches 36 run clone ~55 ~68 ~38 ~55 ~67 ~38 ~81 ~76 ~52

execute if score #flower itspungpond98.clock matches 1 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~78 ~76 ~55
execute if score #flower itspungpond98.clock matches 6 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~78 ~76 ~55
execute if score #flower itspungpond98.clock matches 31 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~78 ~76 ~55
execute if score #flower itspungpond98.clock matches 36 run clone ~55 ~68 ~38 ~55 ~66 ~38 ~78 ~76 ~55

execute if score #flower itspungpond98.clock matches 1 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 11 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 21 run clone ~55 ~68 ~38 ~55 ~63 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 31 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 41 run clone ~55 ~68 ~38 ~55 ~65 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 51 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 61 run clone ~55 ~68 ~38 ~55 ~63 ~38 ~72 ~76 ~52
execute if score #flower itspungpond98.clock matches 71 run clone ~55 ~68 ~38 ~55 ~64 ~38 ~72 ~76 ~52

execute positioned ~61 ~74 ~35 as @e[dx=26,dy=17,dz=26,type=item,nbt={Item:{id:"minecraft:flowering_azalea"}}] run kill @s

#Flowers
#clone ~55 ~68 ~38 ~55 ~67 ~38
