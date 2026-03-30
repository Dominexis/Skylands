
# Atker
execute unless data storage pc:temp damage.is_heal as @n[predicate=pc:object/all,type=!player,tag=pc.sys.atker,distance=..100] at @s run function pc:sys/object/passive/use {type:on_hit}
execute if data storage pc:temp damage.is_heal as @n[predicate=pc:object/all,type=!player,tag=pc.sys.atker,distance=..100] at @s run function pc:sys/object/passive/use {type:on_heal}

# Default
execute unless score #damage pc.main matches 1.. run scoreboard players set #damage pc.main 0
execute unless data storage pc:temp damage run data modify storage pc:temp damage set value {}

# Victim
execute as @e[predicate=pc:object/victim,type=!player,distance=..100] at @s run function pc:sys/object/damage/victim

# Reset
scoreboard players reset #damage pc.main
scoreboard players reset #damage_temp pc.main
data remove storage pc:temp damage
data remove storage pc:temp damage_temp