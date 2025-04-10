# Run a generated function based on plot name and function name
$execute if score #debug_mode sl.value matches 1 run tellraw @s [{"text":"Running function: ","color":"green"},{"text":"sl:generated/plot/$(plot_name)/$(function_name)","color":"white"}]
$return run function sl:generated/plot/$(plot_name)/$(function_name)