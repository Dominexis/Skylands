
summon minecraft:iron_golem ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"iron_golem",team:'enemy',hpmax:48,effects:[{id:'repair_material'}]}
execute as @e[tag=pc.summon,type=iron_golem,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# passive - Repair Material : When the enemy kill Anvil, restore 12 HP (1/4 MaxHP)
# attack1 - 5x5 | 6 damage
# attack2 - furthest ally + 3x3 | 4 damage
# buff1   - 2 Strength
# walk1   - nearest 2 + each 3x3 | 4 damage