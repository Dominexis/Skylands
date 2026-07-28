
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:ender_dragon/crystal/attack1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.ender_eye.death master @a ~ ~1024 ~ 0 0.8 1
playsound minecraft:entity.dolphin.death master @a ~ ~1024 ~ 0 0.8 0.25
playsound minecraft:entity.iron_golem.repair master @a ~ ~1024 ~ 0 1 0.25