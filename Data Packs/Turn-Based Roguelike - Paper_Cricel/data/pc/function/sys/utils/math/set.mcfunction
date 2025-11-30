# exe : object
# usage : (score) #value pc.main + (macro) {id:}

# effect
$execute if score #value pc.main matches 0 run return run data remove $(id)
$execute store result $(id) int 1 run scoreboard players get #value pc.main