# usage : (storage pc:temp line) {block, mode, *first, *nolast, *unhindered, *ignore_grid, state:{select, next}}

# Init
scoreboard players set #line.index pc.main 0
data merge storage pc:temp {line:{state:{select:1b,next:1b}}}
execute store result score #line.block pc.main run data get storage pc:temp line.block

# Straight Diagonal
function pc:sys/object/rotate/is_diagonal
data modify storage pc:temp line.length set value "4"
execute if entity @s[tag=pc.sys.rotate_diagonal] run data modify storage pc:temp line.length set value "5.656"

execute rotated ~ 0 run function pc:sys/grid/select/line/loop with storage pc:temp line

scoreboard players reset #line.index pc.main
scoreboard players reset #line.potential_intent pc.main
data remove storage pc:temp line.state.potential_intent