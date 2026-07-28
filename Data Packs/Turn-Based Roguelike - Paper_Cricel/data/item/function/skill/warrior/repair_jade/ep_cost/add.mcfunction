
$data remove entity @s data.hotbar.$(hotbar).ep.modifiers[{id:"skill.repair_jade"}]
$data modify entity @s data.hotbar.$(hotbar).ep.modifiers append value {id:"skill.repair_jade",value:1,operation:""}

$function sys:item/ep/modifiers {id:"entity @s data.hotbar.$(hotbar).ep"}
$function sys:player/hotbar/update {hotbar:"$(hotbar)"}