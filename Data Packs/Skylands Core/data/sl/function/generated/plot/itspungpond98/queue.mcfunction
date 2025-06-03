# Put all players into their queued position
gamemode spectator @a[gamemode=!spectator,scores={sl.plot=1073381377}]
team join sl.queue @a[team=!sl.queue,scores={sl.plot=1073381377}]
effect give @a[scores={sl.plot=1073381377}] minecraft:blindness infinite 0 true
teleport @a[scores={sl.plot=1073381377}] ~ 512 ~ 0 0

# Check if plot is loaded and run on/off function accordingly
execute store result score #is_loaded sl.value run function sl:generated/plot/itspungpond98/is_loaded

execute if score #plot.itspungpond98.state sl.value matches 2 if score #is_loaded sl.value matches 1 run function sl:generated/plot/itspungpond98/off
execute if score #plot.itspungpond98.state sl.value matches 3 if score #is_loaded sl.value matches 1 run function sl:generated/plot/itspungpond98/on
execute if score #plot.itspungpond98.state sl.value matches 4 if score #is_loaded sl.value matches 1 run function sl:generated/plot/itspungpond98/reset