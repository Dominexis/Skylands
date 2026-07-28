
scoreboard players set #value pc.main 1
$function sys:utils/math/calculate {id:"entity @s data.hotbar.$(hotbar).combat.times"}

$function sys:player/hotbar/update {hotbar:'$(hotbar)'}