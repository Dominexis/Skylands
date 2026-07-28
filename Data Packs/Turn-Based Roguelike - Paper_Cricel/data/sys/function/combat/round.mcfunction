
scoreboard players add $combat.round pc.game 1

execute as @e[tag=pc.grid,type=marker] at @s run function sys:utils/passive/use {passive:"grid_round"}
execute as @e[predicate=sys:entity/any_real] at @s run function sys:utils/passive/use {passive:"round"}

execute as @e[predicate=!sys:entity/player,predicate=sys:entity/any_real] at @s run function sys:entity/intent/summon
function sys:combat/turn/use