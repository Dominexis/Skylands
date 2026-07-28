
execute as @e[tag=pc.atker,limit=1] at @s run function sys:utils/passive/use {passive:"on_kill"}
execute at @s as @e[predicate=sys:entity/any_real,distance=0.1..] at @s run function sys:utils/passive/use {passive:"anyone_die"}

# if (is undyne) :
execute if score #undyne pc.main matches 1 run return run scoreboard players reset #undyne pc.main

# else :
function sys:entity/intent/clear
function sys:entity/intent/icon/self/clear
execute if score @s pc.entity.inturn matches 1 run function sys:combat/turn/end_act

tag @s add pc.void
execute on passengers run function sys:void
kill @s