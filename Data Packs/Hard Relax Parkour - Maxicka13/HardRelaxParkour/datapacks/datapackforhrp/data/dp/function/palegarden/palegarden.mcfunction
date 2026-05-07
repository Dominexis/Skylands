# Tp player if 3 falling
execute if score @s level matches 6 run function dp:palegarden/exit/exit 
execute if score @s level matches 6 run return fail

# Adding player to lost player
team join lost @s
tp @s @e[tag=spawnpoint_pg,limit=1]

tellraw @a ["",{"color":"#aa0000","text":"⚠ "},{"color":"#ff5555","underlined":true,"text":"It is recommended to disable shaders in the Pale Forest "},{"italic":true,"text":"(visual glitches may occur)."}]

execute at @e[tag=spawnpoint_pg,limit=1] run spawnpoint @s
scoreboard players add $quantity PlayersInPG 1

# only seven creakings
execute unless score $quantity creakings matches 7 run function dp:palegarden/creakings