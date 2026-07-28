
function sys:rest_area/main
function sys:combat/main
execute as @e[predicate=sys:entity/any_real] at @s run function sys:entity/main

# if (any player) :
execute unless entity @a[predicate=sys:player/ingame,predicate=sl:player,limit=1] run function sys:lobby/end/clear