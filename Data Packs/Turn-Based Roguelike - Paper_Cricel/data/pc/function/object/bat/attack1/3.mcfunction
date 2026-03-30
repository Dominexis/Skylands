
# hit
scoreboard players set #is_hit pc.main 1
scoreboard players set #damage pc.main 40
data modify storage pc:temp damage set value {is_heal:1b}
execute as @n[type=!minecraft:player,distance=..100,tag=pc.object.now,predicate=pc:object/all] at @s run function pc:sys/object/damage/victim
data remove storage pc:temp damage