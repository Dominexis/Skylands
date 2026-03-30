
# effect
function pc:sys/grid/select/ally

scoreboard players set #value pc.main 2
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:rusty}
scoreboard players set #value pc.main 2
execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:weakness}

function pc:sys/grid/select/clear

# fx