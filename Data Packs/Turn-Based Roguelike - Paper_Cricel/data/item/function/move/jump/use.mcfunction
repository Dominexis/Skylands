
function sys:entity/walk/player
execute at @s unless entity @s[tag=pc.item.move.jump.used] run function item:move/jump/1st
function sys:combat/turn/end_act

# fx
execute at @s run playsound minecraft:entity.goat.long_jump master @a ~ ~1024 ~ 0 1 1