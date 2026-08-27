
execute as @e[tag=pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"on_kill"}
execute at @s as @e[predicate=pc:sys/entity/any_real,distance=0.1..,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"anyone_die"}

# if (is undyne) :
execute if score #undyne pc.main matches 1 run return run scoreboard players reset #undyne pc.main

# else :
function pc:sys/entity/intent/clear
function pc:sys/entity/intent/icon/self/clear
execute if score @s pc.entity.inturn matches 1 run function pc:sys/combat/turn/end_act

tag @s add pc.void
execute on passengers run function pc:sys/void
kill @s