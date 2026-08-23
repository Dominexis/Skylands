
scoreboard players add $combat.tutorial.page pc.game 1
execute if score $combat.tutorial.page pc.game matches 5.. run function pc:sys/combat/tutorial/player/clear
function pc:sys/combat/tutorial/player/update

# fx
playsound minecraft:ui.loom.select_pattern master @s ~ ~ ~ 0.5 0.5