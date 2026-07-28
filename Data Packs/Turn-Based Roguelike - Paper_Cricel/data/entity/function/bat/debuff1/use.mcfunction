
execute as @e[tag=pc.intent.now,tag=pc.intent.debuff,type=marker] at @s run function entity:bat/debuff1/2
execute as @e[tag=pc.intent.now,tag=pc.intent.buff,type=marker,limit=1] at @s run function entity:bat/debuff1/3
function sys:entity/schedule/use {func:"function sys:combat/turn/end_act",delay:10}

# fx
execute positioned ~ ~-0.9 ~ run function entity:bat/debuff1/fx/use