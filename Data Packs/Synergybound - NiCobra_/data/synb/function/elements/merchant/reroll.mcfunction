# /!\ Uncompiled
# As/At : merchant
# Args :
#   - env (macro)
##

data modify entity @s Offers.Recipes set value []

$function synb:elements/merchant/add_offer {env:$(env),pool_name:"shop"}
$function synb:elements/merchant/add_offer {env:$(env),pool_name:"shop"}
$function synb:elements/merchant/add_offer {env:$(env),pool_name:"shop"}
$function synb:elements/merchant/add_offer {env:$(env),pool_name:"shop"}
$function synb:elements/merchant/add_offer {env:$(env),pool_name:"shop"}

# Effects
particle minecraft:witch ~ ~0.5 ~ 0.5 1 0.5 0.3 50
playsound minecraft:block.bell.resonate neutral @a ~ ~ ~ 1 1.5

# Close GUI
tp @s[tag=!synb.attr.out_of_range] ~ ~-10 ~
tag @s add synb.attr.out_of_range