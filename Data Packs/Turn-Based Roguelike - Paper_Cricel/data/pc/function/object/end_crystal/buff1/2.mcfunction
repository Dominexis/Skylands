
# effect
function pc:sys/grid/select/use {mode:"victim",type:"mob",range:""}
execute as @e[type=!minecraft:player,distance=..100,limit=1,predicate=pc:object/victim] at @s run function pc:object/end_crystal/buff1/3

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @n[type=minecraft:end_crystal,distance=..100,tag=pc.sys.atker] eyes run function pc:object/end_crystal/buff1/beam

function pc:sys/grid/select/clear