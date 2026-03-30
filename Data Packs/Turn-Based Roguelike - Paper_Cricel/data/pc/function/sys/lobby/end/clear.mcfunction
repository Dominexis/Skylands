
# Game
function pc:sys/game/combat/end/clear
function pc:sys/game/combat/clear
execute as @e[type=!player,tag=pc.rest_area,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:void

# Lobby
data modify entity @e[type=item_display,tag=pc.lobby.start,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] CustomName set value [{text:"Start the Game",color: "white"}]
data modify entity @e[type=text_display,tag=pc.lobby.start_info,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] text set value [{text:"* Please select character first *",color: "gray"}]
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