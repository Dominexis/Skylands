# Push fade plot score
scoreboard players operation @s sl.plot = @s sl.fade_plot

# Send player to lobby
execute if score @s sl.plot = #lobby_plot sl.value run return run function sl:player/lobby

# Queue player to login to a different plot
data modify storage sl:data macro.function_name set value "queue_login"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
execute store result score #successful sl.value run function sl:plot/generated_function_call with storage sl:data macro

# Send player into spectator if the login was not successful
execute if score #successful sl.value matches 0 run tellraw @s {"text":"Could not log into that island","color":"red"}
execute if score #successful sl.value matches 0 run function sl:player/lobby