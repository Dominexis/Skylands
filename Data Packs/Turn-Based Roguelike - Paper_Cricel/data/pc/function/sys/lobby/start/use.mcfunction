
# Limit
#execute store result score #count pc.main if entity @a[predicate=pc:player/inlobby,predicate=sl:player,distance=..5]
execute if entity @s[tag=!pc.lobby.character.chose] at @s run return run function pc:sys/lobby/start/refuse/no_char
execute if score $game.start pc.main matches 1 at @s run return run function pc:sys/lobby/start/refuse/started
#execute if score #count pc.main matches 3.. run return run function pc:sys/lobby/start/refuse/count
#execute if score #count pc.main matches ..0 run return run function pc:sys/lobby/start/refuse/no_player

# Init
function pc:sys/lobby/end/clear

$function pc:game/$(map)/start
function pc:sys/lobby/start/forceload with storage pc:game coord

scoreboard players set $game.start pc.main 1
scoreboard players set $game.money pc.main 0
scoreboard players set $game.money.cost pc.main 0
scoreboard players set $game.time pc.main 0
data modify storage pc:game stat.is_win set value {text:"Death",color:"red"}
schedule function pc:sys/game/combat/time 1s

function pc:sys/lobby/start/player
function pc:sys/game/combat/end/return/use
data modify entity @e[type=item_display,tag=pc.lobby.start,distance=..8,limit=1] CustomName set value [{text:"Start the Game",color: "dark_gray"}]
data modify entity @e[type=text_display,tag=pc.lobby.start_info,distance=..8,limit=1] text set value [{text:"* The game has started *",color: "gray"}]

schedule function pc:sys/lobby/start/2 2s replace