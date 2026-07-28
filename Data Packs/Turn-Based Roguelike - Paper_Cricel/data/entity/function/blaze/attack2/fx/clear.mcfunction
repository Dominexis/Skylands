
execute as @e[tag=pc.intent.now,type=minecraft:marker,limit=9] at @s run function entity:blaze/attack2/2
kill @s

function sys:combat/turn/end_act

# fx
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.blaze.death master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.lava.pop master @a ~ ~1024 ~ 0 0 1