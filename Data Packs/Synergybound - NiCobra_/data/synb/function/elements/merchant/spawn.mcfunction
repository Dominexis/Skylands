# /!\ Uncompiled
# At : [depends]
# Args :
#   - new_merchant (tag arg)
#   - profession (macro)
#   - rotation (macro)
##

$summon minecraft:villager ~ ~ ~ {VillagerData:{profession:"minecraft:$(profession)",level:5},NoAI:1b,Invulnerable:1b, \
    Tags:["synb.type.merchant","synb.arg.new_merchant"],Offers:{Recipes:[]}, \
    CustomName:{"text":"Relic Merchant","bold":true}, \
    Rotation:[$(rotation).0f,0.0f]}