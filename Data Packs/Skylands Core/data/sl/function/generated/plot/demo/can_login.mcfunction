# Return 1 if the plot can be logged into by all metrics
execute store result score #player_count sl.value if entity @a[team=!sl.spectator,scores={sl.plot=3}]
return run execute if score #player_count sl.value matches ..9