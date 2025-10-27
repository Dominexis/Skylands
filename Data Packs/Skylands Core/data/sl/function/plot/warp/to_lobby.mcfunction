# Convert coordinates from plot to lobby
scoreboard players operation #x sl.value /= #512 sl.value
scoreboard players operation #z sl.value /= #512 sl.value
scoreboard players set #y sl.value 1

tellraw @s {text:"You've been warped to the lobby",color:"green",type:"text"}