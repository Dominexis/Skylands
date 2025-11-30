
# effect
function pc:sys/grid/select/ally
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:object/blaze/attack2/3
function pc:sys/grid/select/clear

execute unless data entity @s {data:{id:"5x5"}} run scoreboard players set #value pc.main 3
execute if data entity @s {data:{id:"5x5"}} run scoreboard players set #value pc.main 2
function pc:passive/effect/apply_grid {effect:"fire_area"}