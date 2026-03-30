
# List available recipes
execute if entity @s[advancements={sanct:recipe/food_flesh={acquired=true,acknowledged=false}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §fSandwich §a(New!)"
execute if entity @s[advancements={sanct:recipe/food_flesh={acquired=true,acknowledged=true}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ Sandwich"
execute if entity @s[advancements={sanct:recipe/rune={acquired=true,acknowledged=false}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §fElemental Runes §a(New!)"
execute if entity @s[advancements={sanct:recipe/rune={acquired=true,acknowledged=true}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ Elemental Runes"
execute if entity @s[advancements={sanct:recipe/undead_finder={acquired=true,acknowledged=false}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §fSoul Lantern §a(New!)"
execute if entity @s[advancements={sanct:recipe/undead_finder={acquired=true,acknowledged=true}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ Soul Lantern"
execute if entity @s[advancements={sanct:recipe/weapon_sweeping_bone={acquired=true,acknowledged=false}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §fSternum Blade §a(New!)"
execute if entity @s[advancements={sanct:recipe/weapon_sweeping_bone={acquired=true,acknowledged=true}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ Sternum Blade"
execute if entity @s[advancements={sanct:recipe/weapon_sweeping_blood={acquired=true,acknowledged=false}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §c§nBleeding Edge§a (New!)"
execute if entity @s[advancements={sanct:recipe/weapon_sweeping_blood={acquired=true,acknowledged=true}}] run data modify storage sanct:storage root.build_book.recipe.list append value "\n ⋅ §c§nBleeding Edge"

# Ordinary icon if no new recipes available
execute if entity @s[advancements={sanct:tags={acquired_recipe=false}}] run return run execute if data storage sanct:storage root.build_book.recipe.list run data modify storage sanct:storage root.build_book.recipe.icon set value "┃⋅┃⋅┃"

# Special icon if new recipes available
data modify storage sanct:storage root.build_book.recipe.icon set value "§2§n§m┃§k⋅§2§n§m┃§k⋅§2§n§m┃"