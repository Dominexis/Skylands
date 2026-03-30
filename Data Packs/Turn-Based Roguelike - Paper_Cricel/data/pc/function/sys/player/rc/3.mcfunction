
# effect
# Object Player CantAct
execute if score $game.acting_time pc.main matches 1.. run return fail

# End turn
execute if data storage pc:temp {rc:{now:{category:"end_turn"}}} as @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,predicate=sl:player] at @s run return run function pc:sys/player/turn/per/3

# Repair
execute if entity @n[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now,predicate=pc:grid/repair] run return run function pc:sys/object/repair/use

# Selected Range
execute unless entity @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now,limit=1] run return run function pc:sys/player/rc/refuse/select

# Energy
execute store result score #ep.cost pc.main run data get storage pc:temp rc.now.energy
execute unless score @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.user,predicate=sl:player] pc.ep >= #ep.cost pc.main run return run function pc:sys/player/rc/refuse/ep

# Durability
function pc:sys/player/rc/get_durability with storage pc:temp rc.now
execute unless score #dbmax pc.main matches -1 if score #db pc.main matches ..0 run return run function pc:sys/player/rc/refuse/durability

return 1