
# Game data
scoreboard players set $level pc.game -1
scoreboard players set $levelmax pc.game 10
data modify storage pc:game map_id set value 'minecraft'
data modify storage pc:game levels set value ["tutorial","forest","zombie_village","cave","mineshaft","deepslate_cave","nether","crimson_forest","nether_fortress","stronghold","ender_dragon"]
data modify storage pc:game coord set value {rest_area:"2536 1 5548 90 0",rest_area_force:"2520 5564 2552 5532",start_button:"2528 1 5548",public_chest:"2536 2 5542",exit_game:"2528 2 5546"}

# Shops
data modify storage pc:game shop.campfire set value {hpmax:{current:15,appreciate:15},epmax:{current:20,appreciate:30},skill_slot:{current:30,appreciate:10}}
execute positioned 2544 2 5542 run function pc:sys/rest_area/campfire/summon

data modify storage pc:game shop.trader set value {name:[{text:"Armor Store"}],skin:{profession:"minecraft:weaponsmith",type:"minecraft:plains",head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"_Chong_ya_"}}}},rotation:-180.0f}
data modify storage pc:game shop.trader.name set from storage pc:lang sys.trader.armor_store
data modify storage pc:game shop.trader.items.loot_table set value 'armor'
data modify storage pc:game shop.trader.items.item append value {slot:11,price_range:"18..26",is_sell:1b}
data modify storage pc:game shop.trader.items.item append value {slot:13,price_range:"18..26",is_sell:1b}
data modify storage pc:game shop.trader.items.item append value {slot:15,price_range:"18..26",is_sell:1b}
execute positioned 2546 1 5558 summon minecraft:villager run function pc:sys/rest_area/trader/summon

data modify storage pc:game shop.trader set value {name:[{text:"Traveler's Store"}],skin:{profession:"minecraft:cartographer",type:"minecraft:taiga",head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc0MDI4MjY2NDgwNywKICAicHJvZmlsZUlkIiA6ICJiMGU4ZjQxZTkwMWU0ZTlhYTNjOTNmYzRjZWE5NmNmNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQYXBlcl9DcmljZWwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY5OTc1Y2JkYjBhMWUwMzM0MmYxODZkMDk3ODhlZGRjM2JiNzA0NzI5ZWFjMzg3ZjM1MmM2NjQxNzNkZDNmMCIKICAgIH0sCiAgICAiQ0FQRSIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZkNTUzYjM5MzU4YTI0ZWRmZTNiOGE5YTkzOWZhNWZhNGZhYTRkOWE5YzNkNmFmOGVhZmIzNzdmYTA1YzJiYiIKICAgIH0KICB9Cn0="}]}}}},rotation:-180.0f}
data modify storage pc:game shop.trader.name set from storage pc:lang sys.trader.travel_store
data modify storage pc:game shop.trader.items.loot_table set value 'travel'
data modify storage pc:game shop.trader.items.item append value {slot:12,price_range:"20..28",is_sell:1b}
data modify storage pc:game shop.trader.items.item append value {slot:14,price_range:"20..28",is_sell:1b}
execute positioned 2534 1 5558 summon minecraft:villager run function pc:sys/rest_area/trader/summon

# Chest loots
function pc:entity/warrior/loot
data modify storage pc:game loot.armor set value ["head/frenzied","head/min_passion","head/gold_greed","chest/glass_cannon","chest/entrench","chest/repair_core","legs/iron_resolve","legs/jerk_reflex","legs/residual_defense","feet/vigilance","feet/energy_surge","feet/footwork"]
data modify storage pc:game loot.travel set value ["move/ender_pearl","move/jump","move/bishop","move/minecart","repair/magma","repair/rugged","repair/wireless","repair/curious"]