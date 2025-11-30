
# effect
execute store result storage pc:data index int 1 run scoreboard players get @s sl.id
function pc:sys/player/data/save2 with storage pc:data
data remove storage pc:data index
data remove storage pc:data root