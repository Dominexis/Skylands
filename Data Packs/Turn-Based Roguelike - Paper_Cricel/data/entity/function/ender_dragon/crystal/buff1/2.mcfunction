
data modify storage pc:temp effect set value {id:"critical_hit",value:2}
function sys:effect/apply

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~1 ~ facing entity @e[tag=pc.atker,type=end_crystal,limit=1] feet run function entity:ender_dragon/crystal/buff1/beam
function sys:fx/buff/use