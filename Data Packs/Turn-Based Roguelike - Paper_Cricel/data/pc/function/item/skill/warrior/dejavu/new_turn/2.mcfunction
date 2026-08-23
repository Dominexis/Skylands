
$execute if data entity @s data.hotbar.$(hotbar).combat.last_item run return fail

$data modify entity @s data.hotbar.$(hotbar).disable_turn set value 2
$function pc:sys/player/hotbar/update {hotbar:'$(hotbar)'}