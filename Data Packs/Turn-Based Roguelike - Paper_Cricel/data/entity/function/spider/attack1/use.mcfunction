
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:spider/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.evoker_fangs.attack master @a ~ ~1024 ~ 0 2 1