
# Game
function pc:sys/game/combat/end/clear
function pc:sys/game/combat/clear
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.rest_area] run function pc:void

# Lobby
data modify entity @e[type=minecraft:item_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.lobby.start,limit=1] CustomName set value {text:"Start the Game",color:"white"}
data modify entity @e[type=minecraft:text_display,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.lobby.start_info,limit=1] text set value [{text:"* Please select character first *",color:"gray",type:"text"}]
function pc:sys/lobby/end/unforceload with storage pc:game coord

# Data
data remove storage pc:game levels
data remove storage pc:game coord
data remove storage pc:game shop
data remove storage pc:game combat
data remove storage pc:game map_id
data remove storage pc:game loot
data remove storage pc:game tutorial
data remove storage pc:game stat
data remove storage pc:temp damage
data remove storage pc:temp damage_temp

scoreboard players reset * pc.main