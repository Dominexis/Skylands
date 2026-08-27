
scoreboard players set @s pc.player.inlobby 1
tag @s remove pc.lobby.character.chose
trigger pc.trigger set 0
scoreboard players reset @s pc.trigger

scoreboard players reset @s pc.player.ingame
scoreboard players reset @s pc.player.incombat
scoreboard players reset @s pc.entity.inturn

function pc:sys/player/data/load
function pc:sys/player/inventory/load
execute at @s run function sl:api/set_checkpoint

gamemode adventure @s
effect clear @s minecraft:night_vision
attribute @s minecraft:scale base reset
attribute @s minecraft:entity_interaction_range modifier remove pc:no_interact

# fx
function pc:sys/player/data/load
function pc:sys/lobby/end/stat/2

title @s times 0 0 20
title @s title {text:"A",font:"sl:fade",type:"text"}
tellraw @s {nbt:"sys.ui.journey_ends",storage:"pc:lang",interpret:1b}
execute at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~1024 ~ 0 1.25 1