
execute if entity @s[predicate=sys:entity/victim] run return fail

function item:skill/warrior/training_sword/after_attack/add with storage pc:temp passive.current
execute if score #var pc.main matches 3.. run function item:skill/warrior/training_sword/after_attack/use
function sys:player/hotbar/update with storage pc:temp passive.current