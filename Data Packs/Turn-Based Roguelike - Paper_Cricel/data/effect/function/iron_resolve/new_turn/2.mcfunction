
function sys:utils/local_thread/atker/save {id:'effect.iron_resolve'}

scoreboard players set @s pc.entity.victim 1
scoreboard players set #damage pc.main 1
data modify storage pc:temp damage set value {mode:"heal"}
function sys:entity/dmg/victim

function sys:utils/local_thread/atker/load {id:'effect.iron_resolve'}