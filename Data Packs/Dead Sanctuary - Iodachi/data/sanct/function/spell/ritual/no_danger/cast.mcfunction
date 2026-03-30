
# Return if already purchased
execute if score #no_danger sanct.numbers matches 1.. run return run tellraw @s "§4§lPURIFICATION§c is already at max level"

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s "§cYou don't have the materials to cast §4§lPURIFICATION"

# Apply upgrade
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"light_purple"},{"selector":"@s"},{"text":" casts §4§lPURIFICATION"}]

data merge entity @e[x=-2310,y=28,z=2307,distance=..1,type=minecraft:wither,limit=1] {CustomName:{text:"§6§l[!]"}}
scoreboard players set #no_danger sanct.numbers 1
data modify storage sanct:storage root.ritual.no_danger set value {stat:{armor:0f,attack_damage:0f,attack_speed:0f,entity_interaction_range:0f,max_health:0f,movement_speed:0f},message:{armor:100s,attack_damage:100s,attack_speed:100s,entity_interaction_range:100s,max_health:100s,movement_speed:100s}}

function sanct:inventory/page/update
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] unless entity @s[distance=..0.0001] run function sanct:inventory/page/update