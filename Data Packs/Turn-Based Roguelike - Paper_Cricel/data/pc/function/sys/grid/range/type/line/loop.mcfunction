
scoreboard players add #line.index pc.main 1

$execute store result score #is_continue pc.main positioned ^ ^ ^$(length) run function pc:sys/grid/range/type/line/2
$execute if score #is_continue pc.main matches 1 positioned ^ ^ ^$(length) run function pc:sys/grid/range/type/line/loop with storage pc:temp range.line