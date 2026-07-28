
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:iron_golem/attack2/3
function sys:combat/turn/end_act

# fx
playsound sys:pipe master @a ~ ~1024 ~ 0 1 0.1