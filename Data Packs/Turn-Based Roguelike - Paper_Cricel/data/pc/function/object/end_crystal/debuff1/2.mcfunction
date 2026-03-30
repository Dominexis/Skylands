
# effect
function pc:sys/grid/select/use {mode:"victim",type:"ally",range:""}
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=pc:object/victim] at @s run function pc:object/end_crystal/debuff1/3

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @n[type=minecraft:end_crystal,distance=..100,tag=pc.sys.atker] eyes run function pc:object/end_crystal/debuff1/beam

function pc:sys/grid/select/clear