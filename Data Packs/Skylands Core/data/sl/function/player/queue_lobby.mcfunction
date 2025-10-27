# Schedule move to lobby with a fade out
scoreboard players operation @s sl.fade_plot = #lobby_plot sl.value
function sl:player/fade/out

# Return 1 to mark success
return 1