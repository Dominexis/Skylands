
# Game data
scoreboard players set $game.level pc.main -1
scoreboard players set $game.levelmax pc.main 10
data modify storage pc:game map_id set value 'minecraft'
data modify storage pc:game levels set value ["tutorial","forest","zombie_village","cave","mineshaft","deepslate_cave","nether","crimson_forest","nether_fortress","stronghold","ender_dragon"]
data modify storage pc:game coord set value {rest_area:"2536 1 5548 90 0",rest_area_force:"2520 5564 2552 5532",start_button:"2528 1 5548",public_chest:"2536 2 5542",exit_game:"2528 2 5546"}

# Shops
data modify storage pc:game shop.campfire set value {now:{cure:5,hpmax:15,epmax:20},increase:{cure:5,hpmax:15,epmax:20}}
execute positioned 2544 2 5542 run function pc:sys/game/rest_area/campfire/summon

data modify storage pc:game shop.trader set value {rotation:-180.0f,name:[{text:"Armor Store"}],skin:{profession:"minecraft:weaponsmith",type:"minecraft:plains",head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"_Chong_ya_"}}}}}
data modify storage pc:game shop.trader.items.loot_table set value 'armor'
data modify storage pc:game shop.trader.items.item append value {slot:11,is_sell:1b,price_range:"15..28"}
data modify storage pc:game shop.trader.items.item append value {slot:13,is_sell:1b,price_range:"15..28"}
data modify storage pc:game shop.trader.items.item append value {slot:15,is_sell:1b,price_range:"15..28"}
execute positioned 2546 1 5558 summon minecraft:villager run function pc:sys/game/rest_area/trader/summon

data modify storage pc:game shop.trader set value {rotation:-180.0f,name:[{text:"Traveler's Store"}],skin:{profession:"minecraft:cartographer",type:"minecraft:taiga",head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTc0MDI4MjY2NDgwNywKICAicHJvZmlsZUlkIiA6ICJiMGU4ZjQxZTkwMWU0ZTlhYTNjOTNmYzRjZWE5NmNmNSIsCiAgInByb2ZpbGVOYW1lIiA6ICJQYXBlcl9DcmljZWwiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY5OTc1Y2JkYjBhMWUwMzM0MmYxODZkMDk3ODhlZGRjM2JiNzA0NzI5ZWFjMzg3ZjM1MmM2NjQxNzNkZDNmMCIKICAgIH0sCiAgICAiQ0FQRSIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWZkNTUzYjM5MzU4YTI0ZWRmZTNiOGE5YTkzOWZhNWZhNGZhYTRkOWE5YzNkNmFmOGVhZmIzNzdmYTA1YzJiYiIKICAgIH0KICB9Cn0="}]}}}}}
data modify storage pc:game shop.trader.items.loot_table set value 'travel'
data modify storage pc:game shop.trader.items.item append value {slot:12,is_sell:1b,price_range:"20..32"}
data modify storage pc:game shop.trader.items.item append value {slot:14,is_sell:1b,price_range:"20..32"}
execute positioned 2534 1 5558 summon minecraft:villager run function pc:sys/game/rest_area/trader/summon

# Chest loots
data modify storage pc:game loot.normal set value ["pc:item/skill/defense","pc:item/skill/flint_and_steel","pc:item/skill/pinpoint_strike","pc:item/skill/bow","pc:item/skill/brittle_assault","pc:item/skill/saber_strike","pc:item/skill/panic_strike"]
data modify storage pc:game loot.rare set value ["pc:item/skill/keen_insight","pc:item/skill/cactus","pc:item/skill/parrying","pc:item/skill/shut_up_of_axe","pc:item/skill/heal_liquor","pc:item/skill/strength_potion"]
data modify storage pc:game loot.epic set value ["pc:item/skill/attack_momentum","pc:item/skill/blazing_strike","pc:item/skill/energy_overdraft","pc:item/skill/fading_compass","pc:item/skill/pestilent_rampage"]
data modify storage pc:game loot.armor set value ["pc:item/head/frenzied","pc:item/head/min_passion","pc:item/head/gold_greed","pc:item/chest/glass_cannon","pc:item/chest/literally_armor","pc:item/chest/repair_core","pc:item/legs/iron_resolve","pc:item/legs/jerk_reflex","pc:item/legs/residual_defense","pc:item/feet/vigilance","pc:item/feet/energy_walker","pc:item/feet/set_position"]
data modify storage pc:game loot.travel set value ["pc:item/move/ender_pearl","pc:item/move/jump","pc:item/move/bishop","pc:item/move/minecart","pc:item/repair/emergency","pc:item/repair/rugged","pc:item/repair/wireless","pc:item/repair/teen"]