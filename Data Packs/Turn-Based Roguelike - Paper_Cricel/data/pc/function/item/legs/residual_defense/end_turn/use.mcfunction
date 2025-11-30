
# effect
function pc:sys/player/owner/find

execute store result score #value pc.main run scoreboard players get @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=sl:player] pc.ep
scoreboard players operation #value pc.main *= #30 sl.value

execute if score #value pc.main matches 1.. run function pc:item/legs/residual_defense/end_turn/2

scoreboard players set @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=sl:player] pc.ep 0
function pc:sys/player/owner/clear