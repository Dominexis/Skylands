
summon minecraft:armor_stand ~ ~ ~ {Tags:["pc.summon"],Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{mainhand:{id:"minecraft:wooden_sword"},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":16752448,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:eye"}}},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":9762047}},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":5297289,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:rib"}}}},Rotation:[-180.0f,0.0f]}

loot replace entity @e[tag=pc.summon,type=minecraft:armor_stand,distance=..0.1,limit=1] armor.head loot pc:sys/player_head
scoreboard players set @e[tag=pc.summon,type=minecraft:armor_stand,distance=..0.1,limit=1] pc.entity.repairer 1
scoreboard players operation @e[tag=pc.summon,type=minecraft:armor_stand,distance=..0.1,limit=1] sl.id = @s sl.id
scoreboard players operation @e[tag=pc.summon,type=minecraft:armor_stand,distance=..0.1,limit=1] pc.epmax = @s pc.epmax

execute as @e[tag=pc.summon,type=minecraft:armor_stand,distance=..0.1,limit=1] at @s run function pc:sys/entity/summon