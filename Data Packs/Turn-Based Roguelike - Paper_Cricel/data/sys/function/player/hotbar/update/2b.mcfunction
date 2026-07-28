
$clear @s *[custom_data~{pc:{hotbar:"$(hotbar)"}}]

$data modify storage pc:temp item set from entity @e[tag=pc.hotbar.self,type=armor_stand,limit=1] data.hotbar.$(hotbar)
function sys:item/summon/use {slot:"give"}