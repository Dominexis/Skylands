
summon minecraft:hoglin ~ ~ ~ {Tags:["pc.summon"],IsImmuneToZombification:1b}

data modify storage pc:temp summon set value {id:"hoglin",team:'enemy',hpmax:140}
execute as @e[tag=pc.summon,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# attack1 - line(9) | walk + 6 damage
# attack2 - 0(nearest ally) | walk, 3x3 | 3x2 damage
# buff1   - 0 | 2 Strength + 1 Robust

## Intents
# every 1, 4, 7, ... turn : attack1
# every 2, 5, 8, ... turn : attack2
# every 3, 6, 9, ... turn : buff1