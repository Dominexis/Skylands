
# effect
$loot replace $(slot) loot $(loot)
$data modify storage pc:temp desc.slot set value "$(slot)"
function pc:sys/item/refresh/use