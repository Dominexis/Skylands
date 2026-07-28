
function sys:grid/select/mob/clear
execute as @e[predicate=!sys:entity/player,predicate=sys:entity/any_real] at @s run function sys:entity/intent/icon/self/summon