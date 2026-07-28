
summon minecraft:blaze ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"blaze",team:'enemy',hpmax:120,effects:[{id:"flaming_touch",value:3,extra:[{id:"fire_area"}]}]}
scoreboard players operation #index pc.main = #index pc.entity.id
execute store result storage pc:temp summon.combat.index int 1 run scoreboard players operation #index pc.main %= #3 sl.value

execute as @e[tag=pc.summon,type=blaze,limit=1] at @s run function sys:entity/summon

## Skills
# Passive - Flaming Touch : On attack, apply X Fire Area to the attacked blocks.
# attack1 - line(9) | 4 damage
# attack2 - 0(player) | 3 damage
# walk1   - nearest(2) | walk + 3 Vulnerable
# buff1   - 1 Strength + 12 Shield

## Intents
# if (intent.index % 3 == 0) : buff1
# elif (intent.index % 3 == 2) : attack2
# else :
#   if (ally < any-cross) : attack1
#   else : walk1