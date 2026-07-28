
# if (text == icon) :
execute if function sys:entity/intent/icon/interpret/is_icon run return run function sys:entity/intent/icon/interpret/3 with storage pc:temp intent

# elif (text == damage) :
execute if data storage pc:temp intent{current:'damage'} run return run data modify storage pc:temp intent.result append value {score:{name:"#damage",objective:"pc.main"}}

# elif (text == repair_round) :
execute if data storage pc:temp intent{current:'repair_round'} run return run data modify storage pc:temp intent.result append value {nbt:"data.repair.round",entity:"@e[predicate=sys:entity/any_real,predicate=sys:owner/entity,limit=1]"}

# else :
data modify storage pc:temp intent.result append from storage pc:temp intent.current