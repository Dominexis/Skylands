
function pc:sys/entity/walk/player
function pc:sys/combat/turn/end_act

# fx
execute at @s run playsound minecraft:entity.goat.long_jump master @a ~ ~1024 ~ 0 1 1
execute at @s run playsound minecraft:block.wood.break master @a ~ ~1024 ~ 0 1.25 1