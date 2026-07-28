
execute as @e[tag=pc.intent.attack,tag=pc.intent.now,type=marker] if function sys:grid/range/type/any-cross at @s run function entity:enderman/attack1/3
function sys:combat/turn/end_act

# fx
playsound minecraft:entity.enderman.scream master @a ~ ~1024 ~ 0 1 0.75
playsound minecraft:entity.firework_rocket.blast master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.firework_rocket.blast master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0 0.5