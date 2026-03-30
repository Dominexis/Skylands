
# effect
function pc:sys/grid/select/ally

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

# fx
execute if entity @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] run playsound minecraft:entity.arrow.hit_player master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~

function pc:sys/grid/select/clear