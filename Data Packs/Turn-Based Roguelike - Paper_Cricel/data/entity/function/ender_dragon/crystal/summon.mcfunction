
summon minecraft:end_crystal ~ ~1 ~ {Tags:["pc.summon","pc.entity.end_crystal"]}

data modify storage pc:temp summon set value {id:"ender_dragon/crystal",team:"enemy",hpmax:28,effects:[{id:"minion"},{id:"undying_shell"}]}
scoreboard players operation #index pc.main = #index pc.entity.id
execute store result storage pc:temp summon.combat.index int 3 run scoreboard players operation #index pc.main %= #2 sl.value

execute as @e[tag=pc.summon,type=end_crystal,limit=1] at @s run function sys:entity/summon

## Skills
# attack1 - 0(ally) | 4 damage
# debuff1 - 0(ally) | 2 Weakness
# buff1   - 0(ender_dragon) | 2 Critical Hit
# buff2   - 0(ender_dragon) | 20 HP

## Intents
# index == 0 : attack1
# index == 1 : buff2
# index == 2 : debuff1
# index == 3 : buff1