
# hit
scoreboard players set #is_hit pc.main 1
scoreboard players set #damage pc.main 40
data modify storage pc:temp damage set value {is_heal:true}
execute as @n[predicate=pc:object/all,type=!player,tag=pc.object.now,distance=..100] at @s run function pc:sys/object/damage/victim
data remove storage pc:temp damage