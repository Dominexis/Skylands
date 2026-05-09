# Tp player if 3 falling
execute if score @s dphardrelaxparkour.level matches 6 run function dphardrelaxparkour:palegarden/exit/exit 
execute if score @s dphardrelaxparkour.level matches 6 run return fail

# Adding player to dphardrelaxparkour.lost player
team join dphardrelaxparkour.lost @s
tp @s @e[tag=dphardrelaxparkour.spawnpointpg,limit=1]

tellraw @a ["",{"color":"#aa0000","text":"⚠ "},{"color":"#ff5555","underlined":true,"text":"It is recommended to disable shaders in the Pale Forest "},{"italic":true,"text":"(visual glitches may occur)."}]

execute at @e[tag=dphardrelaxparkour.spawnpointpg,limit=1] run spawnpoint @s
scoreboard players add $quantity dphardrelaxparkour.playersinpg 1

# only seven creakings
execute unless score $quantity dphardrelaxparkour.creakings matches 7 run function dphardrelaxparkour:palegarden/creakings