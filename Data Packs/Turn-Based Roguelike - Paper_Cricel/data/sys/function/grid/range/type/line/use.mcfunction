
scoreboard players set #line.index pc.main 0
execute store result score #line.block pc.main run data get storage pc:temp range.line.block

execute store result storage pc:temp range.line.length float 0.001 run function sys:grid/range/type/line/length
function sys:grid/range/type/line/loop with storage pc:temp range.line