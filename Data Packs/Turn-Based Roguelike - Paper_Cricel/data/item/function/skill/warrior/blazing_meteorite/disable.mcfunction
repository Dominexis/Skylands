
$data modify entity @s data.hotbar.$(hotbar).disable_turn set value 2

data modify storage pc:temp hotbar set from entity @s data.hotbar
execute as @a[predicate=sys:entity/inturn,limit=1] at @s run function sys:player/hotbar/use