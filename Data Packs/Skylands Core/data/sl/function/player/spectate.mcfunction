# Run logout function
function sl:plot/logout

# Prepare the player
gamemode spectator @s[gamemode=!spectator]
team join sl.spectator @s[team=!sl.spectator]
title @s actionbar ""

# Reset spectate trigger
execute if score @s spectate matches 1.. run tellraw @s {"text":"You are now spectating","color":"gold"}
scoreboard players set @s spectate 0