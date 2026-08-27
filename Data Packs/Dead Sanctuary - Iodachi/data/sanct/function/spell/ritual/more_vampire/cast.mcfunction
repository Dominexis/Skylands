
# Return if at max level
execute unless data storage sanct:storage root.ritual.more_vampire.title_book[0] run return run tellraw @s [{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.title_page"},"§c is already at max level"]

# Return if too expensive
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:fermented_spider_eye 1
execute if data storage sanct:storage {root:{execute_result:0b}} run return run tellraw @s ["§cYou don't have the materials to cast ",{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.title_book[-1]"}]

# Increase power stat
scoreboard players add #player_power sanct.numbers 1600

# Increase vampire quantity
execute store result score #summon_vampire_count sanct.numbers run data get storage sanct:storage root.ritual.more_vampire.count_scale[-1]

# Decrease vampire health
execute store result storage sanct:storage root.ritual.more_vampire.health_decrease_last int 1 store result storage sanct:storage root.summon.vampire.stat.more_vampire_health float -0.01 store result score #count sanct.numbers run data get storage sanct:storage root.ritual.more_vampire.health_decrease_next
execute store result storage sanct:storage root.ritual.more_vampire.health_decrease_next int 1 run scoreboard players add #count sanct.numbers 15

# Cycle data
data modify storage sanct:storage root.ritual.more_vampire.title_page set from storage sanct:storage root.ritual.more_vampire.title_book[-1]
data remove storage sanct:storage root.ritual.more_vampire.title_book[-1]
data remove storage sanct:storage root.ritual.more_vampire.count_scale[-1]

# Add description changes
execute unless data storage sanct:storage root.ritual.more_vampire.description_arrow run data modify storage sanct:storage root.ritual.more_vampire.description_arrow set value "§a -> "

# Announcement
tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] [{"text":"","color":"light_purple"},{"selector":"@s"}," casts ",{"storage":"sanct:storage","nbt":"root.ritual.more_vampire.title_page"}]
function sanct:inventory/page/update
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player] unless entity @s[distance=..0.0001] run function sanct:inventory/page/update