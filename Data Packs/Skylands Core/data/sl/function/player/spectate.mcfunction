# Run logout function
function sl:plot/logout

# Prepare the player
gamemode spectator @s[gamemode=!spectator]
team join sl.spectator @s[team=!sl.spectator]

title @s times 10 70 30
title @s title ""
title @s subtitle ""
title @s actionbar ""