
# effect
function pc:sys/grid/select/any

scoreboard players set #damage pc.main 0
execute as @n[predicate=pc:object/victim,type=!player,tag=pc.player,distance=..100] run function pc:passive/end_turn/dragonbreath_area/for_player

scoreboard players add #damage pc.main 10
data modify storage pc:temp damage set value {bypass:{effect:true,shield:true}}
execute as @e[predicate=pc:object/victim,type=!player,limit=1,distance=..100] at @s run function pc:passive/end_turn/dragonbreath_area/victim
data remove storage pc:temp damage

function pc:sys/grid/select/clear