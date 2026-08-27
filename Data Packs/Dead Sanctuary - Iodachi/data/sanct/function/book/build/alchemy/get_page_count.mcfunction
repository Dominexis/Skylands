
# Get number of alchemy spells
execute store result score #alchemy_count sanct.numbers run data get storage sanct:storage root.build_book.alchemy.list

# Set number of pages
scoreboard players add #alchemy_count sanct.numbers 3
scoreboard players operation #alchemy_count sanct.numbers /= #SPELLS_PER_PAGE sanct.numbers
execute store result storage sanct:storage root.build_book.alchemy.page_count int 1 run scoreboard players get #alchemy_count sanct.numbers

# Add page arrows
execute if score #alchemy_count sanct.numbers matches 2.. run function sanct:book/build/alchemy/add_page_arrows