
# effect
scoreboard players add $game.level pc.main 1
data modify storage pc:temp current.map_id set from storage pc:game map_id
data modify storage pc:temp current.level set from storage pc:game levels[0]
data remove storage pc:game levels[0]

    # Button
execute as @e[type=!player,tag=pc.start_button,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:void
$execute positioned $(start_button) run function pc:sys/game/rest_area/start_button/2 with storage pc:temp current
$execute positioned $(exit_game) run function pc:sys/game/rest_area/start_button/exit_game
data remove storage pc:temp current