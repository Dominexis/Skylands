
scoreboard players add $level pc.game 1
data modify storage pc:temp current.map_id set from storage pc:game map_id
data modify storage pc:temp current.level set from storage pc:game levels[0]
data remove storage pc:game levels[0]

$execute positioned $(start_button) run function sys:rest_area/start_button/summon/2 with storage pc:temp current
$execute positioned $(exit_game) run function sys:rest_area/start_button/summon/exit_game
data remove storage pc:temp current