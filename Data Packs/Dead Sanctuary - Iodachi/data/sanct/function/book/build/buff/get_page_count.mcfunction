
# Get number of buff spells
execute store result score #buff_count sanct.numbers run data get storage sanct:storage root.build_book.buff.list
execute if score #buff_count sanct.numbers matches 0 run return run data modify storage sanct:storage root.build_book.buff.link set value ["\n\n",{"text": "§8§l§m [ ENHANCEMENTS ] ",shadow_color:1375731712,"hover_event": {"action": "show_text","value": {"text": "§7§oNo enhancements available."}}}]

# Set number of pages
scoreboard players add #buff_count sanct.numbers 3
scoreboard players operation #buff_count sanct.numbers /= #SPELLS_PER_PAGE sanct.numbers
execute store result storage sanct:storage root.build_book.buff.page_count int 1 run scoreboard players get #buff_count sanct.numbers

# Add page arrows
execute if score #buff_count sanct.numbers matches 2.. run function sanct:book/build/buff/add_page_arrows
