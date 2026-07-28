
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:ender_dragon/crystal/debuff1/2
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.ender_eye.death master @a ~ ~1024 ~ 0 0.8 1
playsound minecraft:entity.zombie_villager.converted master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.allay.hurt master @a ~ ~1024 ~ 0 0 0.5