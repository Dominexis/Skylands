# /!\ Uncompiled
# As : relic_merchant (tag)
# Args :
#   - env (macro)
#   - pool_name (macro)
##

data modify entity @s Offers.Recipes insert 0 value {buy:{id:"minecraft:prismarine_crystals",count:1b},sell:{id:"minecraft:barrier",count:1b},rewardExp:0b,maxUses:1,xp:0}

$function synb:pools/get_item {env:$(env),pool_name:"$(pool_name)"}
data modify storage synb.d:tmp args.item_id set from storage synb.d:tmp args.picked_item
function synb:elements/merchant/_add_offer2 with storage synb.d:tmp args