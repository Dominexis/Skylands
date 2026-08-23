
execute if data storage pc:temp damage{lose_hp:1b} run return fail
execute unless entity @s[tag=pc.atker] run return fail

function pc:sys/entity/dmg/modifiers/append {operation:"/",value:4}
function pc:sys/entity/dmg/modifiers/append {operation:"*",value:3}