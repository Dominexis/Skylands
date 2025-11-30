
# effect
function pc:sys/player/owner/find
scoreboard players reset @p[predicate=sl:player,tag=pc.sys.passive,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.selected_slot
function pc:sys/player/owner/clear
function pc:sys/object/passive/use {type:end_act}

tag @s remove pc.object.now
tag @s remove pc.sys.atker
function pc:sys/grid/select/clear

execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/state/reset_occupy
execute as @e[predicate=pc:object/all,type=!player,tag=!pc.player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/intent/refresh