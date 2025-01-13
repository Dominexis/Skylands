# Mark as having a player nearby
scoreboard players set #boolean sl.value 1

# Update player about collection
scoreboard players set @s sl.collection_timer 1
playsound minecraft:entity.player.levelup master @s

# Run plot complete function
data modify storage sl:data macro.function_name set value "complete"
execute store result storage sl:data macro.plot_id int 1 run scoreboard players get @s sl.plot
function sl:plot/get_plot_name with storage sl:data macro
execute at @s run function sl:plot/generated_function_call with storage sl:data macro