
$execute store result score #db.before pc.main store result score #db pc.main run data get entity @s data.hotbar.$(slot).db.value
$execute store result score #dbmax pc.main run data get entity @s data.hotbar.$(slot).db.max

$scoreboard players operation #db pc.main $(operation) #db.value pc.main
scoreboard players operation #db pc.main < #dbmax pc.main
execute if score #db pc.main matches ..-1 run scoreboard players set #db pc.main 0

$execute store result entity @s data.hotbar.$(slot).db.value int 1 run scoreboard players get #db pc.main

# consume item
execute unless score #dbmax pc.main matches -1 if score #db pc.main < #db.before pc.main run function sys:utils/passive/use {passive:"consume_db"}