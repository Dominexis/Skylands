scoreboard players remove #buff_count sanct.numbers 1
data modify storage sanct:storage root.build_book.buff.page_arrows append value " §6§l[§6>§l]"
execute if score #buff_count sanct.numbers matches 2.. run return run function sanct:book/build/buff/add_page_arrows