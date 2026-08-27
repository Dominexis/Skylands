
function pc:sys/utils/local_thread/damage/save

execute if data storage pc:temp damage{operand:'self'} run scoreboard players operation #damage pc.main += @s pc.damage
function pc:sys/entity/dmg/victim/use

function pc:sys/utils/local_thread/damage/load