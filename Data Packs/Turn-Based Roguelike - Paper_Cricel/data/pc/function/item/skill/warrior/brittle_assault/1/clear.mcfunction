
$data modify entity @s data.hotbar.$(hotbar).combat.count set value 0
$function pc:sys/player/hotbar/update {hotbar:'$(hotbar)'}