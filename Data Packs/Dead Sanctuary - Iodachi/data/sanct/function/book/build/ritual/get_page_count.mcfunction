
# Get number of rituals
execute store result score #ritual_count sanct.numbers run data get storage sanct:storage root.build_book.ritual.list
execute if score #ritual_count sanct.numbers matches 0 run return run data modify storage sanct:storage root.build_book.ritual.link set value ["\n\n   ",{"text": "§8§l§m  [ RITUALS ]  ",shadow_color:1375731712,"hover_event": {"action": "show_text","value": {"text": "§7§oNo rituals available."}}}]

# Set number of pages
scoreboard players add #ritual_count sanct.numbers 3
scoreboard players operation #ritual_count sanct.numbers /= #SPELLS_PER_PAGE sanct.numbers
execute store result storage sanct:storage root.build_book.ritual.page_count int 1 run scoreboard players get #ritual_count sanct.numbers

# Add page arrows
execute if score #ritual_count sanct.numbers matches 2.. run function sanct:book/build/ritual/add_page_arrows