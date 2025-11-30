# exe : object
# usage : (score) #value pc.main + (macro) {id:}

# effect
$execute store result score #var pc.main run data get $(id)
$execute store result $(id) int 1 run scoreboard players operation #var pc.main += #value pc.main
$execute if score #var pc.main matches 0 run data remove $(id)