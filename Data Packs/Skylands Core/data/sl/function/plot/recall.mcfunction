# Run plot recall function
data modify storage sl:data macro.function_name set value "recall"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
execute at @s run function sl:plot/generated_function_call with storage sl:data macro