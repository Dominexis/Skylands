
setblock ~ ~ ~ minecraft:chest[facing=south,type=single,waterlogged=false]
data modify block ~ ~ ~ CustomName set from storage pc:lang sys.combat.chest_title

$data modify storage pc:utils loot.loot_table set from storage pc:game loot.$(chest)
data modify storage pc:utils loot.slots set value ["10","13","16"]
execute positioned ~ ~ ~ run function pc:sys/utils/loot/use
item modify block ~ ~ ~ container.10 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys":{"loot":1b}}}}
item modify block ~ ~ ~ container.13 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys":{"loot":1b}}}}
item modify block ~ ~ ~ container.16 {"function":"minecraft:set_custom_data","tag":{"pc":{"sys":{"loot":1b}}}}

function pc:sys/combat/end/win/chest/money/summon
function pc:sys/item/tip/use