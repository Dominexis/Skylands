
# effect
tag @s remove pc.your_turn
clear @s

function pc:sys/object/passive/use {type:end_turn}

    # Next turn
function pc:sys/player/select/clear
execute if entity @n[predicate=pc:object/all,type=!player,tag=pc.select.object,distance=..100] run function pc:sys/player/select/mob/reset
execute unless entity @p[predicate=pc:player/ingame,predicate=sl:player,tag=pc.your_turn.queue,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/player/turn/end/use
execute if entity @p[predicate=pc:player/ingame,predicate=sl:player,tag=pc.your_turn.queue,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/player/turn/per/use

# fx
tellraw @s [{text: "* You Finish Your Turn!",color: "gray"}]
playsound minecraft:item.trident.riptide_1 master @s

return fail