# Set the executing player's checkpoint to the current execution position
execute align xyz run spawnpoint @s ~0.5 ~ ~0.5 ~

function sl:api/get_context

scoreboard players operation @s sl.checkpoint_x = #x sl.value
scoreboard players operation @s sl.checkpoint_y = #y sl.value
scoreboard players operation @s sl.checkpoint_z = #z sl.value
scoreboard players operation @s sl.checkpoint_yaw = #yaw sl.value
scoreboard players operation @s sl.checkpoint_pitch = #pitch sl.value

# Run checkpoint function of plot
data modify storage sl:data macro.function_name set value "checkpoint"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
function sl:plot/generated_function_call with storage sl:data macro