
summon bee ~ ~ ~ {Tags:["pc.summon","pc.entity.ender_dragon"],Silent:1b,attributes:[{id:"scale",base:3}],active_effects:[{id:"invisibility",show_particles:false,duration:-1}],Passengers:[{id:"item_display",Tags:["pc.entity.ender_dragon.skin","pc.entity.same_rot"],item:{id:"minecraft:paper",components:{"minecraft:dyed_color":15790320,"minecraft:item_model":"mob:ender_dragon"},count:1},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.5f],translation:[0.0f,-0.5f,0.0f]},teleport_duration:6}]}

data modify storage pc:temp summon set value {id:"ender_dragon",team:'enemy',hpmax:500,effects:[{id:"enormous"},{id:"dragon_scale",type:"include_zero",value:100}]}
execute as @e[tag=pc.summon,type=minecraft:bee,limit=1] at @s run function sys:entity/summon

## Skills
# Passive - Enormous : On hit, Repel everyone on the attacked blocks.
# Passive - Dragon Scale : You can only deal X damage this turn.

# attack1 - line(2x5) | 3 damage, line(9x3) | 3 damage, 1 Dragonbreath Area
# attack2 - 7x7 | 3 damage + 2 Dragonbreath Area
# debuff1 - 3x3(at player) | 4 Dragonbreath Area
# walk1   - line(9x1) | 3 damage + walk, 2side | 2 Dragonbreath Area
# (Dragonbreath Area : At the end of the next X turns, units on this block gain 1 DragonMark.)
# (DragonMark : Whenever you gain DragonMark, take X damage.)

# debuff2 - any | 3 DragonMark
# buff1   - 0 | 3 Strength, 0(at Ender Crystal) | Revive

## Intents
# every 3 turn : debuff2
# if (HP < 50% && !used) : buff1
# else :
#   attack1 * 2, attack2 * 2, walk1 * 2, debuff1 * 2
#   if (player < 5x5) : attack1.weight = 3, attack2.weight = 3