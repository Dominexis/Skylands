# Attempt to log player back into the plot where they came from
data modify storage sl:data macro.function_name set value "queue_login"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
execute store result score #successful sl.value run function sl:plot/generated_function_call with storage sl:data macro

# Send player to lobby if the login was not successful
execute if score #successful sl.value matches 0 run tellraw @s {"text":"The island you were on before is currently not available","color":"red"}
execute if score #successful sl.value matches 0 run function sl:player/lobby