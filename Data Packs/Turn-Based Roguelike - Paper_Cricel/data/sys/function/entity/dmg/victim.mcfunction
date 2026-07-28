
function sys:utils/local_thread/damage/save

execute if data storage pc:temp damage{operand:'self'} run scoreboard players operation #damage pc.main += @s pc.damage
function sys:entity/dmg/victim/use

function sys:utils/local_thread/damage/load