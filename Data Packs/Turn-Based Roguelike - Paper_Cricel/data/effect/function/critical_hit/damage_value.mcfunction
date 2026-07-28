
execute if data storage pc:temp damage{lose_hp:1b} run return fail
execute unless entity @s[tag=pc.atker] run return fail

function sys:entity/dmg/modifiers/append {operation:"/",value:2}
function sys:entity/dmg/modifiers/append {operation:"*",value:3}