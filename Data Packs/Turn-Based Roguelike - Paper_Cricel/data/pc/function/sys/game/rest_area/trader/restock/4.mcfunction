
# effect
# Money
$execute store result score #money pc.main store result storage pc:temp restock.price int 1 store result block ~ ~ ~ Items[{Slot:$(slot)b}].components."minecraft:custom_data".pc.shop_cost int 1 run random value $(price_range)

# Item
$item modify block ~ ~ ~ container.$(slot) [{"function":"minecraft:set_custom_data","tag":{"pc":{"sys.shop":true, "slot": $(slot)}}}]
$data modify storage pc:temp restock.merchandise set from block ~ ~ ~ Items[{Slot:$(slot)b}]
data modify storage pc:temp restock.is_sell set value true

$item modify block ~ ~ ~ container.$(slot) pc:money