
function sys:player/data/load

data remove storage pc:utils data.entity.hotbar
data modify storage pc:utils data.entity.hotbar set value {move:{},repair:{},skill:[{},{},{},{},{}]}
item replace entity 20060423-0-0-0-1 contents from entity @s container.0 {function:"set_custom_data",tag:{pc:{hotbar:'move'}}}
data modify storage pc:utils data.entity.hotbar.move set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s container.1 {function:"set_custom_data",tag:{pc:{hotbar:'repair'}}}
data modify storage pc:utils data.entity.hotbar.repair set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s container.2 {function:"set_custom_data",tag:{pc:{hotbar:'skill[0]'}}}
execute if data entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc{category:'skill'} run data modify storage pc:utils data.entity.hotbar.skill[0] set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s container.3 {function:"set_custom_data",tag:{pc:{hotbar:'skill[1]'}}}
execute if data entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc{category:'skill'} run data modify storage pc:utils data.entity.hotbar.skill[1] set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
execute if score $rest_area.hotbar pc.game matches 1.. run item replace entity 20060423-0-0-0-1 contents from entity @s container.4 {function:"set_custom_data",tag:{pc:{hotbar:'skill[2]'}}}
execute if score $rest_area.hotbar pc.game matches 1.. if data entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc{category:'skill'} run data modify storage pc:utils data.entity.hotbar.skill[2] set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
execute if score $rest_area.hotbar pc.game matches 2.. run item replace entity 20060423-0-0-0-1 contents from entity @s container.5 {function:"set_custom_data",tag:{pc:{hotbar:'skill[3]'}}}
execute if score $rest_area.hotbar pc.game matches 2.. if data entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc{category:'skill'} run data modify storage pc:utils data.entity.hotbar.skill[3] set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
execute if score $rest_area.hotbar pc.game matches 3.. run item replace entity 20060423-0-0-0-1 contents from entity @s container.6 {function:"set_custom_data",tag:{pc:{hotbar:'skill[4]'}}}
execute if score $rest_area.hotbar pc.game matches 3.. if data entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc{category:'skill'} run data modify storage pc:utils data.entity.hotbar.skill[4] set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc

item replace entity 20060423-0-0-0-1 contents from entity @s armor.head {function:"set_custom_data",tag:{pc:{hotbar:'head'}}}
data modify storage pc:utils data.entity.hotbar.head set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s armor.chest {function:"set_custom_data",tag:{pc:{hotbar:'chest'}}}
data modify storage pc:utils data.entity.hotbar.chest set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s armor.legs {function:"set_custom_data",tag:{pc:{hotbar:'legs'}}}
data modify storage pc:utils data.entity.hotbar.legs set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc
item replace entity 20060423-0-0-0-1 contents from entity @s armor.feet {function:"set_custom_data",tag:{pc:{hotbar:'feet'}}}
data modify storage pc:utils data.entity.hotbar.feet set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc

function sys:player/inventory/save
function sys:player/data/save
clear @s *[!minecraft:custom_data~{data:{}}]