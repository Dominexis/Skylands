
# effect
execute if entity @s[tag=pc.object.mob] run scoreboard players set @s pc.object.is_mob 1
execute if entity @s[tag=pc.object.ally] run scoreboard players set @s pc.object.is_ally 1
execute if entity @s[tag=pc.object.repair] run scoreboard players set @s pc.object.is_repair 1
data merge entity @s {Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Rotation:[0f,0f],drop_chances:{mainhand:0,offhand:0,head:0,chest:0,legs:0,feet:0}}
execute if items entity @s armor.head * run item modify entity @s armor.head {"function":"minecraft:set_components","components":{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[]}}
execute if items entity @s armor.chest * run item modify entity @s armor.chest {"function":"minecraft:set_components","components":{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[]}}
execute if items entity @s armor.legs * run item modify entity @s armor.legs {"function":"minecraft:set_components","components":{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[]}}
execute if items entity @s armor.feet * run item modify entity @s armor.feet {"function":"minecraft:set_components","components":{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[]}}
execute store result score @s pc.object_id run scoreboard players add #index pc.object_id 1
execute store result score @s pc.hp run data get storage pc:temp summon.hp
execute store result score @s pc.hpmax run data get storage pc:temp summon.hpmax

execute unless data storage pc:temp lair run function pc:sys/object/intent/use
execute unless data storage pc:temp lair run function pc:sys/object/passive/use {type:start_combat}