# Run plot logout function
data modify storage sl:data macro.function_name set value "logout"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
function sl:plot/generated_function_call with storage sl:data macro

# Reset checkpoint
scoreboard players set @s sl.checkpoint_x 0
scoreboard players set @s sl.checkpoint_y 65
scoreboard players set @s sl.checkpoint_z 0
scoreboard players set @s sl.checkpoint_yaw 0
scoreboard players set @s sl.checkpoint_pitch 0

# Reset plot ID
scoreboard players operation @s sl.plot = #spawn_plot sl.value