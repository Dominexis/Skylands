data modify storage sanct:storage root.build_book.summon.list append value {}

# Get if price is affordable
execute store result storage sanct:storage root.material_price.has_quantity short 1 run clear @s minecraft:bone 0
data modify storage sanct:storage root.material_price.price set value 4s

# Set price number and material to green if so
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.summon.list[-1].price set value "§24 bone"

# Otherwise set to red
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.summon.list[-1].price set value "§44 bone"

# List relevant rituals

# More Vampires
execute store success storage sanct:storage root.execute_result byte 1 run data modify storage sanct:storage root.build_book.summon.summon_vampire.ritual_list append from storage sanct:storage root.ritual.more_vampire.title_page
execute if data storage sanct:storage {root:{execute_result:1b}} run data modify storage sanct:storage root.build_book.summon.summon_vampire.line_list append value "\n ⋅ "

# Horse bones
execute if score #horse_bone sanct.numbers matches 1.. run data modify storage sanct:storage root.build_book.summon.summon_vampire.ritual_list append value "§4§lNATURAL MAGIC"
execute if score #horse_bone sanct.numbers matches 1.. run data modify storage sanct:storage root.build_book.summon.summon_vampire.line_list append value "\n ⋅ "

execute if data storage sanct:storage root.build_book.summon.summon_vampire.ritual_list run data modify storage sanct:storage root.build_book.summon.list[-1].ritual_list set value [{"text":"\n\nModified by:\n ⋅ ","color":"blue"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_vampire.ritual_list[0]"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_vampire.line_list[1]"},{"storage":"sanct:storage","nbt":"root.build_book.summon.summon_vampire.ritual_list[1]"}]