
summon minecraft:hoglin ~ ~ ~ {Tags:["pc.summon"],IsImmuneToZombification:1b,Passengers:[{id:"item_display",Tags:[pc.entity.same_rot],item: {count: 1, id: "minecraft:tnt"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 0.75f, 1.25f], translation: [0.0f, -0.45f, 0.0f]}}]}

data modify storage pc:temp summon set value {id:"hoglin_tnt",team:'enemy',hpmax:160,effects:[{id:"tnt_tank",value:6}]}
execute as @e[tag=pc.summon,type=hoglin,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# Passive - C₇H₅N₃O₆ Tank : At the end of its turn, if its move intent was interrupted, deal X damage to everyone within a 9-block cross.
# attack1 - line(9) | walk + 6 damage
# attack2 - 0(nearest ally) | walk, 3x3 | 3x2 damage
# buff1   - 0 | 2 C₇H₅N₃O₆ Tank + 1 Robust

## Intents
# every 1, 4, 7, ... turn : attack1
# every 2, 5, 8, ... turn : attack2
# every 3, 6, 9, ... turn : buff1