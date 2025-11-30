
# effect
summon minecraft:armor_stand ~ ~ ~ {Tags:["pc.summon","pc.player","pc.object.ally"],Invulnerable:1b,ShowArms:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,equipment:{mainhand:{id:"minecraft:wooden_sword"},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":16752448,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:eye"}}},legs:{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":9762047}},chest:{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":5297289,"minecraft:trim":{material:"minecraft:gold",pattern:"minecraft:rib"}}}},Rotation:[-180.0f,0.0f]}

# init
loot replace entity @n[type=minecraft:armor_stand,distance=..0.1,tag=pc.summon] armor.head loot pc:player_head

function pc:sys/player/data/load

scoreboard players operation #value pc.hp = @s pc.hp
scoreboard players operation #value pc.hpmax = @s pc.hpmax
scoreboard players operation #value sl.id = @s sl.id
data modify storage pc:temp summon set from storage pc:data root.object
data modify storage pc:temp summon.id set value 'player'

function pc:sys/player/data/save

execute as @n[type=minecraft:armor_stand,distance=..0.1,tag=pc.summon] at @s run function pc:sys/object/summon/use