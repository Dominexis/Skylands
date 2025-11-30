
# effect
scoreboard players operation #temp2 pc.main = #temp pc.main
scoreboard players operation #temp2 pc.main *= #3 sl.value
execute store result storage pc:temp count.delay int 1 run scoreboard players remove #temp2 pc.main 1

function pc:sys/object/schedule/use with storage pc:temp count

execute if score #temp pc.main >= #count pc.main run return fail

scoreboard players add #temp pc.main 1
function pc:object/rusty_silverfish/attack1/count