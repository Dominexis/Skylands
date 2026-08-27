
function pc:sys/player/data/load

data modify storage pc:temp summon set from storage pc:utils data.entity
execute store result storage pc:temp summon.hpmax int 1 run scoreboard players get @s pc.hpmax
$function pc:entity/$(id)/summon

function pc:sys/player/data/save