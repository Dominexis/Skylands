# /!\ Uncompiled
# As : relic_merchant (tag)
# Args :
#   - item_id (macro)
##

$function synb:itemengine/executor/get_icon {icon_item_id:"$(item_id)"}

data modify entity @s Offers.Recipes[0].sell set from block 3328 50 -2304 Items[0]
data modify entity @s Offers.Recipes[0].sell.components.minecraft:custom_data.merchant_item set value 1
data modify entity @s Offers.Recipes[0].buy.components set from storage synb.d:values money_item_components

# Price choice
scoreboard players set #price_tier synb.Tmp.Expr 0
execute store result score #price_tier synb.Tmp.Expr run data get block 3328 50 -2304 Items[0].components.minecraft:custom_data.price_tier
execute if score #price_tier synb.Tmp.Expr matches 1 store result entity @s Offers.Recipes[0].buy.count int 1 run \
    random value 15..20 synb.r:run_rng
execute if score #price_tier synb.Tmp.Expr matches 2 store result entity @s Offers.Recipes[0].buy.count int 1 run \
    random value 20..25 synb.r:run_rng
execute if score #price_tier synb.Tmp.Expr matches 3 store result entity @s Offers.Recipes[0].buy.count int 1 run \
    random value 25..35 synb.r:run_rng
execute if score #price_tier synb.Tmp.Expr matches 4 store result entity @s Offers.Recipes[0].buy.count int 1 run \
    random value 45..55 synb.r:run_rng
execute if score #price_tier synb.Tmp.Expr matches 5.. store result entity @s Offers.Recipes[0].buy.count int 1 run \
    scoreboard players get num99 synb.Const