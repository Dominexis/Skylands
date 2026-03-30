# exe : object

# is player
$execute if entity @s[predicate=pc:player/ingame,predicate=sl:player] run return run function pc:sys/object/passive/player/goto {type:$(type)}
execute unless entity @s[predicate=pc:object/all,type=!player] unless entity @s[predicate=pc:object/neutral,type=!player] run return fail

$data modify storage pc:temp passive.type set value $(type)

# passives
execute if entity @s[predicate=pc:object/ally_player,type=!player] at @s run function pc:sys/object/passive/player/use
execute at @s run function pc:sys/object/passive/object/use

# reset
function pc:sys/object/hover_info/modify
data remove storage pc:temp passive