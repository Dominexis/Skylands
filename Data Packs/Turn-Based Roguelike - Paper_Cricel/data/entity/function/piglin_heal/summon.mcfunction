
summon minecraft:zombified_piglin ~ ~ ~ {Tags:["pc.summon",'pc.entity.piglin_heal'],equipment:{mainhand:{id:"minecraft:paper",components:{"minecraft:item_model":"sys:option/hpmax"}},offhand:{id:"minecraft:zombified_piglin_spawn_egg"},head:{id:"minecraft:turtle_helmet",components:{"minecraft:trim":{material:"gold",pattern:"ward"}}}}}

data modify storage pc:temp summon set value {id:"piglin_heal",team:"enemy",hpmax:120,effects:[{id:"piglin_ts",value:3}]}
execute as @e[tag=pc.summon,type=zombified_piglin,limit=1] at @s run function sys:entity/summon

## Skills
# summon1 - 3x3 | summon piglin_zombie
# buff1   - all enemies no 0 | 6 HP + 12 Shield
# buff2   - all enemies no 0 | 6 HP + 1 Critical Hit
# attack1 - any-cross + anyd-cross | 2 damage + lose 2 Strength this turn

## Intents
# default : (buff1 * 2, buff2 * 2)
# if (!enemies < 3x3, buddies < 3) : append (summon1 * 4)
# if (player < any-cross) : append (attack1 * 3)