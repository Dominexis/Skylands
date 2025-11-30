# exe : object

# is player
$execute if entity @s[predicate=pc:player/ingame,predicate=sl:player] run return run function pc:sys/object/passive/player/goto {type:$(type)}
execute unless entity @s[type=!minecraft:player,predicate=pc:object/all] unless entity @s[type=!minecraft:player,predicate=pc:object/neutral] run return fail

$data modify storage pc:temp passive.type set value $(type)

# passives
execute if entity @s[type=!minecraft:player,predicate=pc:object/ally_player] at @s run function pc:sys/object/passive/player/use
execute at @s run function pc:sys/object/passive/object/use

# reset
function pc:sys/object/hover_info/modify
data remove storage pc:temp passive