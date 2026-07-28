
$execute store result entity @s data.hotbar.$(hotbar).combat.x int 1 run scoreboard players add #x pc.main 1

$data modify storage pc:temp repair set value {slot:"$(hotbar)",value:-1}
function sys:item/db/use