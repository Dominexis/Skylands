
data remove entity @s data.in_turn
scoreboard players operation @s pc.ep = @s pc.epmax

tag @s add pc.player.now
function pc:sys/utils/passive/use {passive:"new_turn"}
tag @s remove pc.player.now

data modify storage pc:temp hotbar set from entity @s data.hotbar

# fx
execute positioned ~ ~0.25 ~ run function pc:sys/combat/turn/player/fx