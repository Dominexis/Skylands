
$function item:$(loot)/data
$function sys:item/summon/use {slot:"block ~ ~ ~ container.$(slot)"}
$item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_custom_data","tag":{"pc":{"return_chest":{"pos":"$(PosX) $(PosY) $(PosZ)","slot":$(slot)}}}}