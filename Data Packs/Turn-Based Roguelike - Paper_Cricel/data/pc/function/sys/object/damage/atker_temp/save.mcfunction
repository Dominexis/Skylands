
# ID
$tag @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.atker,predicate=pc:object/all_neutral] add pc.damage.$(id)
$tag @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.damage.$(id),predicate=pc:object/all_neutral] remove pc.sys.atker

# Value
$scoreboard players operation #damage.$(id) pc.main = #damage pc.main

# Storage
$execute if data storage pc:temp damage run data modify storage pc:temp damage_temp_$(id) set from storage pc:temp damage
$execute unless data storage pc:temp damage run data modify storage pc:temp damage_temp_$(id) set value {}

$data modify storage pc:temp passive_temp_$(id) set from storage pc:temp passive