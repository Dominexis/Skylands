
# Return if at max level
execute unless data storage sanct:storage root.ritual.spring_health.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.ritual.spring_health.title_page"},"§c is already at max level"]

# Return if too expensive
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:rotten_flesh 0
execute store result storage sanct:storage root.material_price.price short 1 run data get storage sanct:storage root.ritual.spring_health.price[-1] 1
execute unless predicate sanct:spell/check_affordable run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.ritual.spring_health.title_book[-1]"}]

# Pay price and increaes power stat
function sanct:inventory/spend_material/flesh with storage sanct:storage root.material_price
scoreboard players add #player_power sanct.numbers 100

# Start clock and add description arrow when first cast
execute unless score #spring_health sanct.numbers matches 1.. run data modify storage sanct:storage root.ritual.spring_health.description_arrow set value " §a-> "
execute unless score #spring_health sanct.numbers matches 1.. run schedule function sanct:spell/ritual/spring_health/clock 300

# Increase rift quantity
execute store result score #spring_health sanct.numbers run data get storage sanct:storage root.ritual.spring_health.count[-1]
scoreboard players set #spring_health_skips sanct.numbers 15

# Cycle data
data modify storage sanct:storage root.ritual.spring_health.title_page set from storage sanct:storage root.ritual.spring_health.title_book[-1]
data remove storage sanct:storage root.ritual.spring_health.title_book[-1]
data remove storage sanct:storage root.ritual.spring_health.price[-1]
data remove storage sanct:storage root.ritual.spring_health.count[-1]
data remove storage sanct:storage root.ritual.spring_health.description[-1]

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126] [{"text":"","color":"light_purple"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.ritual.spring_health.title_page"}]
function sanct:inventory/page/update
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] unless entity @s[distance=..0.0001] run function sanct:inventory/page/update