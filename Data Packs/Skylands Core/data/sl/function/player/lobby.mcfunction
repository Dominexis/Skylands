# Run logout function
function sl:plot/logout

# Teleport player to lobby
function sl:player/checkpoint/send_to

# Send title to player
function sl:player/title

# Prepare the player
gamemode adventure @s[gamemode=!adventure]
team join sl.player @s[team=!sl.player]
title @s actionbar ""

# Reset lobby trigger
execute if score @s lobby matches 1.. run tellraw @s {"text":"You have been sent to the lobby","color":"gold"}
scoreboard players set @s lobby 0