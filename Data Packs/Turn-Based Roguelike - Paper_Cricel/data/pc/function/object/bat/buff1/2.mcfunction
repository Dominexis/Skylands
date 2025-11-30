
# effect
function pc:sys/grid/select/mob

scoreboard players set #value pc.main 4
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:'critical_hit'}

function pc:sys/grid/select/clear

# fx
playsound minecraft:item.goat_horn.sound.1 master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.5 0.75
playsound minecraft:entity.vex.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 5 0 5 0 30 force