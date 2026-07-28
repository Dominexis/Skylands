
# Game
function sys:combat/end/clear
function sys:combat/clear
execute as @e[tag=pc.rest_area] run function sys:void

# Lobby
data modify entity @e[tag=pc.lobby.start_info,type=minecraft:text_display,limit=1] text set value [{nbt:"sys.lobby.ui.select_first",storage:"pc:lang",interpret:1b,type:"nbt"}]
function sys:lobby/end/unforceload with storage pc:game coord

# Data
data remove storage pc:game levels
data remove storage pc:game coord
data remove storage pc:game shop
data remove storage pc:game combat
data remove storage pc:game map_id
data remove storage pc:game loot
data remove storage pc:game tutorial
data remove storage pc:game stat
data remove storage pc:temp damage
data remove storage pc:temp rc_item
data remove storage pc:temp item
data remove storage pc:temp range
data remove storage pc:temp effect
data remove storage pc:temp ascension

scoreboard players reset * pc.main
scoreboard players reset * pc.game