
$data modify entity @s data.hotbar.$(hotbar).combat.count set value 0
$function sys:player/hotbar/update {hotbar:'$(hotbar)'}