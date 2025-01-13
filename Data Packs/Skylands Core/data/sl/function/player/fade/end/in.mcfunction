# Put player onto player team
team join sl.player @s[team=!sl.player]

# Reset title
title @s times 10 70 30
title @s title ""
title @s subtitle ""

# Display Skylands title if in the lobby
execute if score @s sl.plot = #lobby_plot sl.value run return run function sl:player/title

# Log player into other plot
data modify storage sl:data macro.function_name set value "login"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
execute at @s run function sl:plot/generated_function_call with storage sl:data macro