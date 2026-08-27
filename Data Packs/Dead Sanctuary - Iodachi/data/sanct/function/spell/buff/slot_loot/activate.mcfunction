
tellraw @s "§2Time favors you:"

function sanct:spell/buff/slot_loot/loot
execute if score @s sanct.spell.slot_loot matches 2.. run function sanct:spell/buff/slot_loot/loot
execute if score @s sanct.spell.slot_loot matches 3.. run function sanct:spell/buff/slot_loot/loot
execute if score @s sanct.spell.slot_loot matches 4.. run function sanct:spell/buff/slot_loot/loot