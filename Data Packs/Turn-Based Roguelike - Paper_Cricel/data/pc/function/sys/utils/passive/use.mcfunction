## (exe) entity

scoreboard players add @s pc.thread_index 1
function pc:sys/utils/local_thread/save {id:"storage pc:temp passive"}
data remove storage pc:temp passive

$data modify storage pc:temp passive.passive set value '$(passive)'
execute at @s run function pc:sys/utils/passive/2
execute if data storage pc:temp passive.queue[0] run function pc:sys/utils/passive/queue with storage pc:temp passive.queue[0]

function pc:sys/utils/local_thread/load {id:"storage pc:temp passive"}
scoreboard players remove @s pc.thread_index 1
execute if score @s pc.thread_index matches ..0 run function pc:sys/entity/infobar/update