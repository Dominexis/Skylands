
# effect
tag @s remove pc.your_turn
clear @s

function pc:sys/object/passive/use {type:"end_turn"}

# Next turn
function pc:sys/player/select/clear
execute if entity @n[type=!minecraft:player,distance=..100,tag=pc.select.object,predicate=pc:object/all] run function pc:sys/player/select/mob/reset
execute unless entity @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,predicate=pc:player/ingame,predicate=sl:player] run function pc:sys/player/turn/end/use
execute if entity @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.your_turn.queue,predicate=pc:player/ingame,predicate=sl:player] run function pc:sys/player/turn/per/use

# fx
tellraw @s [{text:"* You Finish Your Turn!",color:"gray",type:"text"}]
playsound minecraft:item.trident.riptide_1 master @s

return fail