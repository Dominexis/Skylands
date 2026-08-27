
scoreboard players operation #value pc.main = #dbcost pc.main
$function pc:sys/utils/math/calculate {id:"entity @s data.hotbar.$(hotbar).combat.count"}

$function pc:sys/player/hotbar/update {hotbar:'$(hotbar)'}