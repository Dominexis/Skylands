
scoreboard players remove $combat.tutorial.page pc.game 1
execute if score $combat.tutorial.page pc.game matches ..0 run scoreboard players set $combat.tutorial.page pc.game 1
function sys:combat/tutorial/player/update

# fx
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 0.5 0.5