
execute store result score #damage pc.main run data get entity @s data.damage
execute if entity @e[predicate=sys:entity/victim,predicate=sys:entity/ally,limit=1] run function sys:entity/dmg/atker
execute as @e[predicate=sys:entity/victim,limit=1] run function entity:ender_dragon/walk1/dash/2c

kill @s