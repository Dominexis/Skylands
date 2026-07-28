
execute as @e[tag=pc.fx] at @s run function sys:void
execute as @e[tag=pc.grid,type=minecraft:marker] at @s run function sys:void
execute as @e[tag=pc.intent,type=minecraft:marker] at @s run function sys:void
execute as @e[tag=pc.select,type=minecraft:item_display] at @s run function sys:void
execute as @e[predicate=sys:entity/any_real] at @s run function sys:void
function sys:entity/intent/icon/clear
kill 20060423-0-0-1-0

scoreboard players reset $act.running pc.game
data remove storage pc:temp passive
data remove storage pc:temp grid