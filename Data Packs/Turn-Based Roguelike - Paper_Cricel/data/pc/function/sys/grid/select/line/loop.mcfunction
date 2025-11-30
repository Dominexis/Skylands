
# effect
data modify storage pc:temp line.state.select set value 1b
scoreboard players add #line.index pc.main 1
scoreboard players remove #line.block pc.main 1
execute positioned ~-1.5 ~-100 ~-1.5 run function pc:sys/grid/select/line/can_continue

$execute if data storage pc:temp {line:{state:{select:1b}}} run function pc:sys/grid/select/$(mode)
$execute if data storage pc:temp {line:{state:{next:1b}}} positioned ^ ^ ^$(length) run function pc:sys/grid/select/line/loop with storage pc:temp line