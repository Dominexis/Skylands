
execute if score #undyne pc.main matches 1 run return fail
execute unless score $combat.start pc.game matches 1 run return fail

tag @s add pc.entity.death
execute unless entity @e[scores={pc.entity.player=1},tag=!pc.entity.death,limit=1] run function sys:combat/end/use {result:lose}