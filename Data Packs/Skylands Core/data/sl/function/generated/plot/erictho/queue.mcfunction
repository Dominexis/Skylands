# Put all players into their queued position
gamemode spectator @a[gamemode=!spectator,scores={sl.plot=229388}]
team join sl.queue @a[scores={sl.plot=229388},team=!sl.queue]
effect give @a[scores={sl.plot=229388}] minecraft:blindness infinite 0 true
teleport @a[scores={sl.plot=229388}] ~ 512 ~ 0 0

# Check if plot is loaded and run on/off function accordingly
execute store result score #is_loaded sl.value run function sl:generated/plot/erictho/is_loaded

execute if score #plot.erictho.state sl.value matches 2 if score #is_loaded sl.value matches 1 run function sl:generated/plot/erictho/off
execute if score #plot.erictho.state sl.value matches 3 if score #is_loaded sl.value matches 1 run function sl:generated/plot/erictho/on
execute if score #plot.erictho.state sl.value matches 4 if score #is_loaded sl.value matches 1 run function sl:generated/plot/erictho/reset