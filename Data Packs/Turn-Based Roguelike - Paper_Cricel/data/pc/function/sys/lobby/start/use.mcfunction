
# if (refuse) :
execute if entity @s[tag=!pc.lobby.character.chose] run return run function pc:sys/lobby/start/refuse/no_char
execute if score $start pc.game matches 1 run return run function pc:sys/lobby/start/refuse/started

# else :
function pc:sys/lobby/end/clear

$function pc:game/$(map)/start

scoreboard players set $start pc.game 1
scoreboard players set $money pc.game 0
scoreboard players set $stat.time pc.game 0
scoreboard players set $stat.money.cost pc.game 0
function pc:sys/lobby/start/hotbar
data modify storage pc:game stat.is_win set from storage pc:lang sys.lobby.end.death

function pc:sys/lobby/start/player
function pc:sys/combat/tpter/return/use

function pc:sys/lobby/start/forceload with storage pc:game coord
schedule function pc:sys/combat/time 1s
schedule function pc:sys/lobby/start/2 2s replace

# fx
data modify entity @e[tag=pc.lobby.start_info,type=minecraft:text_display,distance=..8,limit=1] text set from storage pc:lang sys.lobby.name.game_started