
# effect
function pc:sys/grid/select/mob

execute store result score #damage pc.main run data get entity @s data.select.line_index 20
data modify storage pc:temp damage set value {source:{category:"skill",id:"bow"}}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
playsound minecraft:entity.arrow.hit_player master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.5 1 0.5