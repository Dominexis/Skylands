
# effect
$execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1,predicate=sl:player] run function pc:sys/item/replace {loot:"$(loot)",slot:"block ~ ~ ~ container.$(slot)"}
$item modify block ~ ~ ~ container.$(slot) {"function":"minecraft:set_custom_data","tag":{"pc":{"return_chest":{"pos":"$(PosX) $(PosY) $(PosZ)","slot":$(slot)}}}}