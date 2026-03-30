data modify storage sanct:storage root.build_page.buff_seperator append value "; "
scoreboard players add #increment sanct.numbers 1
execute if predicate sanct:inventory/page/buff_seperator run function sanct:inventory/page/add_buff_seperator