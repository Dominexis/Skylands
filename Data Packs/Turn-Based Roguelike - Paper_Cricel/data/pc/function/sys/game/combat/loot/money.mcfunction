
loot replace block ~ ~2 ~ container.22 loot pc:shop/campfire/money
$item modify block ~ ~2 ~ container.22 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys.loot":true,"return_chest":{"pos":"$(x) $(y) $(z)","slot":22}}}}