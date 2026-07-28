
summon minecraft:enderman ~ ~ ~ {Tags:["pc.summon"]}

data modify storage pc:temp summon set value {id:"enderman",team:"enemy",hpmax:180,effects:[{id:"enmity_gaze",value:1}]}
execute as @e[tag=pc.summon,type=enderman,limit=1] at @s run function sys:entity/summon

## Skills
# passive - Gaze of Enmity : Whenever you use an item, if you and this enemy are facing each other: You lose X Strength and it gains X Strength this turn.
# attack1 - nearest(1) | walk, line(9*4) | 5 damage
# attack2 - any-cross(~4 ~ ~4) + any-cross(~-4 ~ ~-4) | 3x2 damage
# walk1   - furthest(any-cross(at player)) | walk, line(9) | 10 damage
# debuff1 - nearest(2) | walk, 5x5 | Booty + 2 Vulnerable
# (Booty : Disable all of Skill Item this turn.)

# attack3 - any | 1x5 damage
# buff1   - 1 Strength + 24 Shield

## Intents
# turn 4 : debuff1
# every turn 6, 12, ... : attack3
# every turn 7, 13, ... : buff1

# default : (attack1 * 2, attack2 * 2, walk1 * 1)
# if (player < 5x5) : walk1.weight == 3
# if (turn > 6) : append (debuff1 * 2)