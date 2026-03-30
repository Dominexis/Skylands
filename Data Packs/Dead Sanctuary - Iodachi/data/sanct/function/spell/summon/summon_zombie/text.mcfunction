data modify storage sanct:storage root.build_book.summon.list append value {}

# Get if price is affordable
execute store success storage sanct:storage root.execute_result byte 1 run clear @s minecraft:rotten_flesh 0

# Set price number and material to green if so
execute unless data storage sanct:storage {root:{execute_result:0b}} run data modify storage sanct:storage root.build_book.summon.list[-1].price set value "§21 rotten flesh"

# Otherwise set to red
execute if data storage sanct:storage {root:{execute_result:0b}} run data modify storage sanct:storage root.build_book.summon.list[-1].price set value "§41 rotten flesh"


# List relevant rituals

# More hoard
execute store success storage sanct:storage root.execute_result byte 1 run data modify storage sanct:storage root.build_book.summon.summon_zombie.ritual_list append from storage sanct:storage root.ritual.more_zombie.title_page
execute if data storage sanct:storage {root:{execute_result:1b}} run data modify storage sanct:storage root.build_book.summon.summon_zombie.line_list append value "\n ⋅ "

# Zombie armor
execute store success storage sanct:storage root.execute_result byte 1 run data modify storage sanct:storage root.build_book.summon.summon_zombie.ritual_list append from storage sanct:storage root.ritual.zombie_armor.title_page
execute if data storage sanct:storage {root:{execute_result:1b}} run data modify storage sanct:storage root.build_book.summon.summon_zombie.line_list append value "\n ⋅ "

# More flesh
execute store success storage sanct:storage root.execute_result byte 1 run data modify storage sanct:storage root.build_book.summon.summon_zombie.ritual_list append from storage sanct:storage root.ritual.more_flesh.title_page
execute if data storage sanct:storage {root:{execute_result:1b}} run data modify storage sanct:storage root.build_book.summon.summon_zombie.line_list append value "\n ⋅ "

execute if data storage sanct:storage root.build_book.summon.summon_zombie.ritual_list run data modify storage sanct:storage root.build_book.summon.list[-1].ritual_list set value [{"text":"\n\nModified by:\n ⋅ ","color":"blue"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_zombie.ritual_list[0]"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_zombie.line_list[1]","interpret":true},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_zombie.ritual_list[1]"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_zombie.line_list[2]","interpret":true},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_zombie.ritual_list[2]"}]