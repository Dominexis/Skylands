# delete data
data remove entity @s interaction
data remove entity @s attack 

kill @e[tag=isgmadv]

execute if score $bool isGMAdventure matches 1 run function dp:settings/is_gmadventure/is_gmadventure_off
execute if score $bool isGMAdventure matches 0 if score $bool isGMAdvButton matches 0 run function dp:settings/is_gmadventure/is_gmadventure_on

scoreboard players set $bool isGMAdvButton 0
