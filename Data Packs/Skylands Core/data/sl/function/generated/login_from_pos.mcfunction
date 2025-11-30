# Log into a plot based on the player's position
execute if entity @s[x=-512,y=-64,z=-512,dx=1023,dy=511,dz=1023] run return run function sl:player/queue_lobby
execute if entity @s[x=1536,y=-64,z=0,dx=511,dy=511,dz=511] run return run function sl:generated/plot/demo/api/login
execute if entity @s[x=2560,y=-64,z=-512,dx=511,dy=511,dz=511] run return run function sl:generated/plot/oldschool_skyisland/api/login
execute if entity @s[x=-512,y=-64,z=-4096,dx=511,dy=511,dz=511] run return run function sl:generated/plot/feelsbatman/api/login
execute if entity @s[x=2560,y=-64,z=3584,dx=511,dy=511,dz=511] run return run function sl:generated/plot/gardensofbabble/api/login
execute if entity @s[x=512,y=-64,z=-5632,dx=511,dy=511,dz=511] run return run function sl:generated/plot/itspungpond98/api/login
execute if entity @s[x=-3072,y=-64,z=-4096,dx=511,dy=511,dz=511] run return run function sl:generated/plot/did/api/login
execute if entity @s[x=-1536,y=-64,z=-1536,dx=511,dy=511,dz=511] run return run function sl:generated/plot/piecewiselantern/api/login
execute if entity @s[x=5632,y=-64,z=-3584,dx=511,dy=511,dz=511] run return run function sl:generated/plot/maced/api/login
execute if entity @s[x=2048,y=-64,z=5120,dx=511,dy=511,dz=511] run return run function sl:generated/plot/pc/api/login

# Warn player if they aren't in a plot
tellraw @s {text:"You are not on an island",color:"red",type:"text"}
return 0