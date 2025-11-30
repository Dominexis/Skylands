
# effect
function pc:sys/grid/select/use {mode:'victim',type:'mob',range:''}

scoreboard players set #damage pc.main 300
data modify storage pc:temp damage set value {is_heal:true}
function pc:sys/object/damage/atker

# fx
scoreboard players set #range pc.main 0
execute positioned ~ ~0.5 ~ facing entity @n[type=end_crystal,tag=pc.sys.atker,distance=..100] eyes run function pc:object/end_crystal/buff2/beam

function pc:sys/grid/select/clear