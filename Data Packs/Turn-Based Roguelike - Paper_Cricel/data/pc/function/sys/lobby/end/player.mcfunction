
# effect
tp @s 2536 63 5608 180 0

scoreboard players set @s pc.player.inlobby 1
scoreboard players reset @s pc.player.ingame
tag @s remove pc.your_turn
tag @s remove pc.rest_area.player
tag @s remove pc.sys.rotate_diagonal
tag @s remove pc.lobby.character.chose

trigger pc.trigger set 0

clear @s
gamemode adventure @s
effect clear @s minecraft:night_vision
attribute @s minecraft:scale base reset
attribute @s minecraft:entity_interaction_range modifier remove minecraft:no_interact
function pc:sys/player/data/clear
execute at @s run function sl:api/set_checkpoint

# fx
title @s times 0 0 20
title @s title {text:"A",font:"sl:fade",type:"text"}
tellraw @s [{text:"* Your Journey Ends Here.",color:"gray",type:"text"}]
execute at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 1.25