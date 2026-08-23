
scoreboard players set @s pc.ep 3
scoreboard players set @s pc.epmax 3
scoreboard players set @s pc.hp 20
scoreboard players set @s pc.hpmax 20

data modify storage pc:utils data.char.name set from storage pc:lang sys.lobby.char.warrior
data modify storage pc:utils data.entity set value {id:"warrior",team:'ally',type:'player'}

function pc:item/move/basic/data
function pc:sys/item/summon/use {slot:"entity 20060423-0-0-0-1 contents"}
data modify storage pc:utils data.entity.hotbar.move set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc

function pc:item/repair/basic/data
function pc:sys/item/summon/use {slot:"entity 20060423-0-0-0-1 contents"}
data modify storage pc:utils data.entity.hotbar.repair set from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc

function pc:item/skill/warrior/training_sword/data
function pc:sys/item/summon/use {slot:"entity 20060423-0-0-0-1 contents"}
data modify storage pc:utils data.entity.hotbar.skill append from entity 20060423-0-0-0-1 item.components."minecraft:custom_data".pc