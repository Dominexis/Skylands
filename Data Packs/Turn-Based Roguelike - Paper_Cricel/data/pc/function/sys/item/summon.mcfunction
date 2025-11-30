
# effect
$loot spawn ~ ~ ~ loot $(loot)
data modify storage pc:temp desc.slot set value "entity @e[type=item,nbt={Age:0s},distance=..0.01,limit=1] contents"
function pc:sys/item/refresh/use
data merge entity @e[type=item,nbt={Age:0s},distance=..0.01,limit=1] {PickupDelay:0s}