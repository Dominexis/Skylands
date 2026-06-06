# Tp player if 3 falling
execute if score @s dphardrelaxparkour.level matches 6 run function dphardrelaxparkour:palegarden/exit/exit
execute if score @s dphardrelaxparkour.level matches 6 run return fail

# Adding player to dphardrelaxparkour.lost player
tag @s add dphardrelaxparkour.lost
tag Maxicka13 remove dphardrelaxparkour.player

tp @s @e[tag=dphardrelaxparkour.spawnpointpg,limit=1]

tellraw @s ["",{"color":"#aa0000","text":"⚠ "},{"color":"#ff5555","underlined":true,"text":"It is recommended to disable shaders in the Pale Forest "},{"italic":true,"text":"(visual glitches may occur)."}]

scoreboard players add $quantity dphardrelaxparkour.playersinpg 1

# only seven creakings
execute unless score $quantity dphardrelaxparkour.creakings matches 7 run function dphardrelaxparkour:palegarden/creakings