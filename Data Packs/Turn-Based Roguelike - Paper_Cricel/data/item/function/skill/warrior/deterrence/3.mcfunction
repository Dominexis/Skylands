
data modify storage pc:temp effect set value {id:'strength',temp:1b}
execute store result storage pc:temp effect.value int 2 run scoreboard players get #skill.deterrence.count pc.main
function sys:effect/apply