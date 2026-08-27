
data modify storage pc:temp effect set value {id:"strength"}
execute store result storage pc:temp effect.value int 1 run data get storage pc:temp passive.queue[0].value -1
function pc:sys/effect/apply