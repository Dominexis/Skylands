data modify storage sanct:storage root.build_page.ritual_seperator append value "; "
scoreboard players add #increment sanct.numbers 1
execute if predicate sanct:inventory/page/ritual_seperator run function sanct:inventory/page/add_ritual_seperator