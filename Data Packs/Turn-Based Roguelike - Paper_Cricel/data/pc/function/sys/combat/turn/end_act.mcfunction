## (exe) : entity

# if (inturn == exist) :
execute unless score @s pc.entity.inturn matches 1 run return run execute as @e[scores={pc.entity.inturn=1},predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/combat/turn/end_act

# else :
execute if score $combat.start pc.game matches 1 run function pc:sys/combat/turn/end_act/2

tag @s remove pc.atker
function pc:sys/grid/range/clear
scoreboard players reset @s pc.entity.inturn
scoreboard players reset $act.running pc.game
scoreboard players reset #no_intent pc.main