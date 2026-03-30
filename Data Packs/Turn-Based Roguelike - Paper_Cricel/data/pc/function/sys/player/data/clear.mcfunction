
# effect
data remove storage pc:data root
execute store result storage pc:data index int 1 run scoreboard players get @s sl.id
function pc:sys/player/data/clear2 with storage pc:data
data remove storage pc:data index