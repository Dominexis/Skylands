
$data modify entity @s data.hotbar.$(hotbar).combat.last set from storage pc:temp rc_item.name
$data modify entity @s data.hotbar.$(hotbar).combat.last_item set from storage pc:temp rc_item
$function sys:player/hotbar/update {hotbar:'$(hotbar)'}