
function pc:sys/entity/intent/clear

tag @s add pc.intent.interrupt
data merge entity @s {data:{intent:{self:{text:['stun']},intent:'stun'}}}

function pc:sys/entity/intent/icon/self/summon