
# Return if spells haven't been unlocked
execute unless score #level sanct.numbers matches 1.. run return 1

# Set general data
data remove storage sanct:storage root.loaded_player.spell_list
data modify storage sanct:storage root.build_book set value {ritual  :{link:["\n\n     ",{"text": "§5§l[ RITUALS ]","shadow_color": -1577058304,"hover_event": {"action": "show_text","value": {"text": "Modify the world."}},"click_event": {"action": "change_page","page": 12}}]},  buff  :{link:["\n\n ",{"text": "§6§l[ ENHANCEMENTS ]","shadow_color": -16777216,"hover_event": {"action": "show_text","value": {"text": "Empower yourself."}},"click_event": {"action": "change_page","page": 21}}]}}

# Get available spells
function sanct:player/storage/load
function sanct:book/build/level1
execute if score #level sanct.numbers matches 2.. run function sanct:book/build/level2
execute if score #level sanct.numbers matches 3.. run function sanct:book/build/level3

# Get spell quantities
function sanct:book/build/ritual/get_page_count
function sanct:book/build/buff/get_page_count
execute if data storage sanct:storage root.build_book.alchemy.list[0] run function sanct:book/build/alchemy/get_page_count

# List available recipes
function sanct:book/build/recipe