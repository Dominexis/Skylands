
execute unless data storage pc:temp effect{temp:1b} run return fail

# if (effect == temp) :
data modify storage pc:temp effect.id set value 'strength_down'
data remove storage pc:temp effect.temp
function pc:sys/effect/apply