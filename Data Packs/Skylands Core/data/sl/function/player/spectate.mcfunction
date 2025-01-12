# Run logout function
function sl:plot/logout

# Prepare the player
gamemode spectator @s[gamemode=!spectator]
team join sl.spectator @s[team=!sl.spectator]
title @s actionbar ""