
# effect
function pc:sys/grid/select/any

scoreboard players set #damage pc.main 0
execute as @n[type=!minecraft:player,distance=..100,tag=pc.player,predicate=pc:object/victim] run function pc:passive/end_turn/dragonbreath_area/for_player

scoreboard players add #damage pc.main 10
data modify storage pc:temp damage set value {bypass:{effect:1b,shield:1b}}
execute as @e[type=!minecraft:player,distance=..100,limit=1,predicate=pc:object/victim] at @s run function pc:passive/end_turn/dragonbreath_area/victim
data remove storage pc:temp damage

function pc:sys/grid/select/clear