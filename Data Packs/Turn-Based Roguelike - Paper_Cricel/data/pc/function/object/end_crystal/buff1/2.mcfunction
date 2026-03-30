
# effect
function pc:sys/grid/select/use {mode:'victim',type:'mob',range:''}
execute as @e[predicate=pc:object/victim,type=!player,limit=1,distance=..100] at @s run function pc:object/end_crystal/buff1/3

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @n[type=end_crystal,tag=pc.sys.atker,distance=..100] eyes run function pc:object/end_crystal/buff1/beam

function pc:sys/grid/select/clear