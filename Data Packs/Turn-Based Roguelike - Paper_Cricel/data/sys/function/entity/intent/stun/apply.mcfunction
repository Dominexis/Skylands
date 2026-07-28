
function sys:entity/intent/clear

tag @s add pc.intent.interrupt
data merge entity @s {data:{intent:{self:{text:['stun']},intent:'stun'}}}

function sys:entity/intent/icon/self/summon