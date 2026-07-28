
function sys:grid/range/clear
execute as @e[predicate=!sys:entity/player,predicate=sys:entity/any_real] at @s run function sys:entity/intent/update
