# As : player
##

execute store result storage synb.d:tmp args.hp long 1 run scoreboard players get @s synb.IEStat.HP
execute store result storage synb.d:tmp args.speed double 0.001 run scoreboard players get @s synb.IEStat.MovSpeed
function synb:itemengine/mod/_tick_attr2 with storage synb.d:tmp args