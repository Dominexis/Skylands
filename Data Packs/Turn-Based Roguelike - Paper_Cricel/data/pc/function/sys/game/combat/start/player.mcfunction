
# effect
$tp @s $(spawnpoint)
tag @s remove pc.rest_area.player
gamemode adventure @s
attribute @s minecraft:scale base set 2
attribute @s minecraft:step_height base set 1
attribute @s minecraft:entity_interaction_range modifier add minecraft:no_interact -1 add_multiplied_total
scoreboard players reset @s pc.epqueue
execute at @s run function sl:api/set_checkpoint

# Iventory
function pc:sys/player/data/load
data modify storage pc:data root.inventory.container set from entity @s Inventory
data modify storage pc:data root.inventory.equipment set from entity @s equipment
data modify storage pc:data root.object.hotbar set value {move:"-",skill1:"-",skill2:"-",skill3:"-",repair:"-",feet:"-",legs:"-",chest:"-",head:"-"}
data modify storage pc:data root.object.hotbar.move set from entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.skill1 set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.skill2 set from entity @s Inventory[{Slot:2b}].components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.skill3 set from entity @s Inventory[{Slot:3b}].components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.repair set from entity @s Inventory[{Slot:4b}].components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.feet set from entity @s equipment.feet.components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.legs set from entity @s equipment.legs.components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.chest set from entity @s equipment.chest.components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.hotbar.head set from entity @s equipment.head.components."minecraft:custom_data".pc.item
data modify storage pc:data root.object.durability_max.move set from entity @s Inventory[{Slot:0b}].components."minecraft:custom_data".pc.durability
data modify storage pc:data root.object.durability_max.skill1 set from entity @s Inventory[{Slot:1b}].components."minecraft:custom_data".pc.durability
data modify storage pc:data root.object.durability_max.skill2 set from entity @s Inventory[{Slot:2b}].components."minecraft:custom_data".pc.durability
data modify storage pc:data root.object.durability_max.skill3 set from entity @s Inventory[{Slot:3b}].components."minecraft:custom_data".pc.durability
data modify storage pc:data root.object.durability_max.repair set from entity @s Inventory[{Slot:4b}].components."minecraft:custom_data".pc.durability
data modify storage pc:data root.object.durability set from storage pc:data root.object.durability_max
function pc:sys/player/data/save
clear @s

# fx
effect give @s minecraft:blindness 2 0 true
tellraw @s [{text:"* You Continue Your Adventure!",color:"gray",type:"text"}]
execute at @s run playsound minecraft:block.cherry_leaves.step master @s ~ ~ ~ 1 0
execute at @s run playsound minecraft:block.cherry_leaves.step master @s ~ ~ ~ 1 0
playsound minecraft:block.azalea_leaves.step master @s ~ ~ ~