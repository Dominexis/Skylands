
function pc:sys/utils/local_thread/atker/save {id:"effect.vampire"}

scoreboard players set @s pc.entity.victim 1
execute store result score #damage pc.main run data get storage pc:temp passive.current.value 1
data modify storage pc:temp damage set value {mode:"heal"}
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"effect.vampire"}