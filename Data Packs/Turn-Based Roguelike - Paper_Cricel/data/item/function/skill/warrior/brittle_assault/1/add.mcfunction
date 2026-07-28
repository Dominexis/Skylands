
scoreboard players operation #value pc.main = #dbcost pc.main
$function sys:utils/math/calculate {id:"entity @s data.hotbar.$(hotbar).combat.count"}

$function sys:player/hotbar/update {hotbar:'$(hotbar)'}