
function pc:sys/utils/math/get {id:"entity @s data.in_combat.head.frenzied"}
scoreboard players operation #var pc.main %= #5 sl.value
function pc:item/head/frenzied/new_turn/2