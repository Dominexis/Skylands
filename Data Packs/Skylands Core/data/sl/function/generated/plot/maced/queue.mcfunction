# Put all players into their queued position
gamemode spectator @a[gamemode=!spectator,scores={sl.plot=1073512459}]
team join sl.queue @a[scores={sl.plot=1073512459},team=!sl.queue]
effect give @a[scores={sl.plot=1073512459}] minecraft:blindness infinite 0 true
teleport @a[scores={sl.plot=1073512459}] ~ 512 ~ 0 0

# Check if plot is loaded and run on/off function accordingly
execute store result score #is_loaded sl.value run function sl:generated/plot/maced/is_loaded

execute if score #plot.maced.state sl.value matches 2 if score #is_loaded sl.value matches 1 run function sl:generated/plot/maced/off
execute if score #plot.maced.state sl.value matches 3 if score #is_loaded sl.value matches 1 run function sl:generated/plot/maced/on
execute if score #plot.maced.state sl.value matches 4 if score #is_loaded sl.value matches 1 run function sl:generated/plot/maced/reset