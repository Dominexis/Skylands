
# ID
$tag @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.damage.$(id),predicate=pc:object/all_neutral] add pc.sys.atker
$tag @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.atker,predicate=pc:object/all_neutral] remove pc.damage.$(id)

# Value
$scoreboard players operation #damage pc.main = #damage.$(id) pc.main

# Storage
$data modify storage pc:temp damage set from storage pc:temp damage_temp_$(id)
$data remove storage pc:temp damage_temp_$(id)

$data modify storage pc:temp passive set from storage pc:temp passive_temp_$(id)
$data remove storage pc:temp passive_temp_$(id)