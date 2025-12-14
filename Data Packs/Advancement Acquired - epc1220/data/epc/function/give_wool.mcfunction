scoreboard objectives add give_wool dummy

## Move Storage
$execute store result score red give_wool run data get storage minecraft:hint l$(lvl)[0]
$execute store result score orange give_wool run data get storage minecraft:hint l$(lvl)[1]
$execute store result score yellow give_wool run data get storage minecraft:hint l$(lvl)[2]
$execute store result score lime give_wool run data get storage minecraft:hint l$(lvl)[3]
$execute store result score blue give_wool run data get storage minecraft:hint l$(lvl)[4]
$execute store result score purple give_wool run data get storage minecraft:hint l$(lvl)[5]

## Give Wool
execute if score red give_wool matches 0 run give @p red_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]
execute if score orange give_wool matches 0 run give @p orange_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]
execute if score yellow give_wool matches 0 run give @p yellow_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]
execute if score lime give_wool matches 0 run give @p lime_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]
execute if score blue give_wool matches 0 run give @p blue_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]
execute if score purple give_wool matches 0 run give @p purple_wool[minecraft:can_place_on={blocks:["minecraft:bone_block"]}]

scoreboard objectives remove give_wool