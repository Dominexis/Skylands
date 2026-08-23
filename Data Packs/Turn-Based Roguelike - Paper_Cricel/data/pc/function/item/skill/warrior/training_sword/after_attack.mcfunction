
execute if entity @s[predicate=pc:sys/entity/victim] run return fail

function pc:item/skill/warrior/training_sword/after_attack/add with storage pc:temp passive.current
execute if score #var pc.main matches 3.. run function pc:item/skill/warrior/training_sword/after_attack/use
function pc:sys/player/hotbar/update with storage pc:temp passive.current