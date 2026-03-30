
# effect
function pc:sys/grid/select/use {mode:'victim',type:'ally',range:''}

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/object/damage/atker

function pc:sys/grid/select/clear

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @n[type=end_crystal,tag=pc.sys.atker,distance=..100] eyes run function pc:object/end_crystal/attack1/beam
particle minecraft:item{item:purple_glazed_terracotta} ~ ~1 ~ 0 0 0 0.15 50 force