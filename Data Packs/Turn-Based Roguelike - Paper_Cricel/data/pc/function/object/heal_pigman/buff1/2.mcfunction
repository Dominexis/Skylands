
# effect
function pc:sys/grid/select/mob

scoreboard players set #value pc.main 150
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/shield/use

scoreboard players set #damage pc.main 70
data modify storage pc:temp damage set value {is_heal:1b}
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
