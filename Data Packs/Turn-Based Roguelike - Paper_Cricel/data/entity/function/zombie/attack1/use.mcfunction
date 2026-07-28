
execute as @e[tag=pc.intent.now,type=marker] at @s run function entity:zombie/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~1024 ~ 0 1 0.5