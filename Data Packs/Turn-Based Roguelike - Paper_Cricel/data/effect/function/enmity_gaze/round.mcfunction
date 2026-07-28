
execute unless score $combat.round pc.game matches 1 run return fail
execute as @e[predicate=sys:entity/player] at @s run function effect:enmity_gaze/entity/init