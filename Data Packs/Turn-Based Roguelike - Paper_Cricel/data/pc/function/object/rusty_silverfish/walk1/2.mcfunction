
# effect
function pc:sys/grid/select/ally

scoreboard players set #value pc.main 4
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"weakness"}
scoreboard players set #value pc.main 1
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"entangled"}

function pc:sys/grid/select/clear

# fx
particle minecraft:dust_color_transition{from_color:[0.361,0.196,0.09],scale:1.0f,to_color:[0.741,0.506,0.235]} ~ ~ ~ 0.8 0 0.8 1 150 force
particle minecraft:instant_effect ~ ~1 ~ 0.5 0.5 0.5 0 10 force