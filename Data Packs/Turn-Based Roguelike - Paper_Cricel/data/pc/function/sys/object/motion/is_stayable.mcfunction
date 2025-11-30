
# No Grid
execute unless entity @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid,limit=1] run return fail

# Occupied
execute as @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid,limit=1] at @s run function pc:sys/grid/state/reset_occupy
execute unless data entity @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid,limit=1] {data:{type:"spac"}} run return fail
execute if data entity @e[type=minecraft:marker,dx=2,dy=200,dz=2,tag=pc.grid,limit=1] data.occupy run return fail

return 1