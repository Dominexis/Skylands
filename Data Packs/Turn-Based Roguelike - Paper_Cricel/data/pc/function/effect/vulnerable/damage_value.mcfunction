
execute if data storage pc:temp damage{lose_hp:1b} run return fail
execute if entity @s[tag=pc.atker] run return fail

function pc:sys/entity/dmg/modifiers/append {operation:"/",value:2}
function pc:sys/entity/dmg/modifiers/append {operation:"*",value:3}