# Log into a plot based on the player's position
execute if entity @s[x=-512,y=-64,z=-512,dx=1023,dy=511,dz=1023] run return run function sl:player/lobby
execute if entity @s[x=1536,y=-64,z=0,dx=511,dy=511,dz=511] run return run function sl:generated/plot/demo/queue_login

# Warn player if they aren't in a plot
tellraw @s {"text":"You are not on an island","color":"red"}