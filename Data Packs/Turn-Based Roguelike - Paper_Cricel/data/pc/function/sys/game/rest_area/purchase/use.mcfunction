
# effect
execute if entity @s[gamemode=creative] run return fail

tag @s add pc.sys.looter
execute summon minecraft:item_display run function pc:sys/game/rest_area/purchase/get_item
tag @s remove pc.sys.looter

# Purchase
execute unless score $game.money pc.main >= #cost pc.main run function pc:sys/game/rest_area/purchase/fail/use
execute if score $game.money pc.main >= #cost pc.main run function pc:sys/game/rest_area/purchase/pass/use

function pc:sys/game/rest_area/purchase/refresh

# Reset
clear @s *[minecraft:custom_data~{pc:{sys.shop:1b}}]
data remove storage pc:temp loot