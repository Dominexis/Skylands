scoreboard players remove #alchemy_count sanct.numbers 1
data modify storage sanct:storage root.build_book.alchemy.page_arrows append value " §3§l[§3>§l]"
execute if score #alchemy_count sanct.numbers matches 2.. run return run function sanct:book/build/alchemy/add_page_arrows