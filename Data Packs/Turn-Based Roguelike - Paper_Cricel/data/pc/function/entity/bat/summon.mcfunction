
summon minecraft:bat ~ ~1 ~ {Tags:["pc.summon"],attributes:[{id:"minecraft:scale",base:1.25}]}

data modify storage pc:temp summon set value {id:"bat",team:"enemy",hpmax:42,effects:[{id:"vampire",value:3}]}
execute as @e[tag=pc.summon,type=bat,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# passive - Vampire : On hit, restore 3 HP.
# attack1 - line(7x3) | 2x2 damage
# attack2 - 5x5 | 1x3 damage
# walk1   - nearest(4) | walk, 3x3 | 2 damage
# buff1   - 0 | 1 Strength + 7 HP
# debuff1 - 7x7 | 2 Weakness, 0 | 12 Shield

## Intents
# turn 5 : buff1
# every 4, 8, 12 turn : debuff1
# every 2 turn no hit ally : walk1
# if (ally < 5x5) : attack2
# else : attack1