scoreboard players remove #ritual_count sanct.numbers 1
data modify storage sanct:storage root.build_book.ritual.page_arrows append value " §5§l[§5>§l]"
execute if score #ritual_count sanct.numbers matches 2.. run return run function sanct:book/build/ritual/add_page_arrows