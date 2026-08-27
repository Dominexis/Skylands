# Return if spell maxed or not unlocked
execute unless data storage sanct:storage root.loaded_player.buff.sprint_damage.title_book[0] run return 1
data modify storage sanct:storage root.build_book.buff.seperators append value "\n§6§o-------------------\n"

# Basic information
data modify storage sanct:storage root.loaded_player.spell_list.buff append value "sprint_damage"
data modify storage sanct:storage root.build_book.buff.list append value {price:["\nCost: ",{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.price.color","interpret":true,"extra":[" rotten flesh"]}],description:[{"text":"While sprinting, inflict "},{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.description.old_knockback"},{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.description.arrow"},{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.description.new_knockback","color":"green"},"§a%§r knockback\nand ",{text:"Wither ",color:"#888888"},"(",{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.description.damage"}," damage over ",{"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.description.duration"},"seconds)."]}
data modify storage sanct:storage root.build_book.buff.list[-1].title set from storage sanct:storage root.loaded_player.buff.sprint_damage.title_book[-1]

# Fetch spell price
execute store result storage sanct:storage root.material_price.price byte 1 store result storage sanct:storage root.build_book.buff.sprint_damage.price.value int 1 run data get storage sanct:storage root.loaded_player.buff.sprint_damage.price[-1]

# Set price color to green if affordable or red if not
execute if predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.sprint_damage.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.price.value","color":"dark_green"}
execute unless predicate sanct:spell/check_affordable run data modify storage sanct:storage root.build_book.buff.sprint_damage.price.color set value {"storage":"sanct:storage","nbt":"root.build_book.buff.sprint_damage.price.value","color":"dark_red"}

# Set mouse-over description arguments for wither
data modify storage sanct:storage root.build_book.buff.sprint_damage.description.damage set from storage sanct:storage root.loaded_player.buff.sprint_damage.damage_description[-1]
data modify storage sanct:storage root.build_book.buff.sprint_damage.description.duration set from storage sanct:storage root.loaded_player.buff.sprint_damage.duration_description[-1]

# Set mouse-over description arguements for knockback
execute store result storage sanct:storage root.build_book.buff.sprint_damage.description.new_knockback int 1 run data get storage sanct:storage root.loaded_player.buff.sprint_damage.knockback.scale[-1]
execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level1=false}}] run return 1
execute store result storage sanct:storage root.build_book.buff.sprint_damage.description.old_knockback int 1 run data get storage sanct:storage root.loaded_player.buff.sprint_damage.knockback.count
data modify storage sanct:storage root.build_book.buff.sprint_damage.description.arrow set value "§a -> "