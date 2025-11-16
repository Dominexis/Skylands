# Tick plot
function maced:tick

# Turn plot off if there are no players in it
execute store result score #player_count sl.value if entity @a[scores={sl.plot=1073512459}]
execute if score #player_count sl.value matches 0 run function sl:generated/plot/maced/queue_off