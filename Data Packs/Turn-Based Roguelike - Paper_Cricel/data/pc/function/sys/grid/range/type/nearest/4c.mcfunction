
execute if data storage pc:temp range{mode:'intent'} store result storage pc:temp intent.nearest.index int 1 run scoreboard players get #nearest.index pc.main
$execute at @s run function pc:sys/grid/range/mode/$(mode)/use with storage pc:temp range