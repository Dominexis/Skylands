
# effect
scoreboard players add $game.round pc.main 1

    # System
function pc:sys/grid/round
execute as @e[predicate=pc:object/neutral,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/round/neutral
execute as @e[predicate=pc:object/all,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/passive/use {type:round}

    # Object
function pc:sys/player/turn/use
execute as @e[predicate=pc:object/all,type=!player,tag=!pc.player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/intent/use