
execute as @e[tag=pc.intent.now,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/piglin_heal/buff1/2
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:entity.allay.ambient_with_item master @a ~ ~1024 ~ 0 1 0.5
execute anchored eyes run particle minecraft:entity_effect{color:[0.298, 0.596, 0.914, 1.0]} ^1.25 ^-0.25 ^ 0 0 0 0.1 20 force
execute anchored eyes run particle minecraft:entity_effect{color:[0.298, 0.596, 0.914, 1.0]} ^-1.25 ^-0.25 ^ 0 0 0 0.1 20 force