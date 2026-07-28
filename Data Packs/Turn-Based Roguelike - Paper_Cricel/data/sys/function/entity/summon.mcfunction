## (exe) summoning entity
## (storage) pc:temp summon

execute store result score @s pc.entity.id run scoreboard players add #index pc.entity.id 1
execute store result score @s pc.origin.id run scoreboard players get @e[tag=pc.atker,limit=1] pc.entity.id
function sys:entity/summon/hp

execute if data storage pc:temp summon{team:'enemy'} run scoreboard players set @s pc.entity.enemy 1
execute if data storage pc:temp summon{team:'ally'} run scoreboard players set @s pc.entity.ally 1
execute if data storage pc:temp summon{type:'player'} run scoreboard players set @s pc.entity.player 1
execute if data storage pc:temp summon{type:'repair'} run scoreboard players set @s pc.entity.repair 1

# appearance
data merge entity @s {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f},DeathLootTable:""}
execute if items entity @s armor.head * run item modify entity @s armor.head sys:decorated_item
execute if items entity @s armor.chest * run item modify entity @s armor.chest sys:decorated_item
execute if items entity @s armor.legs * run item modify entity @s armor.legs sys:decorated_item
execute if items entity @s armor.feet * run item modify entity @s armor.feet sys:decorated_item

data modify entity @s data set from storage pc:temp summon
data remove storage pc:temp summon
execute at @s summon minecraft:text_display run function sys:entity/infobar/summon
tag @s remove pc.summon

function sys:utils/passive/use {passive:"start_combat"}