
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:iron_golem/buff1/2
function sys:combat/turn/end_act

# fx
execute anchored eyes run particle minecraft:lava ^ ^ ^ 0 0 0 1 20 force
particle minecraft:smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.1 20 force

playsound minecraft:entity.vindicator.celebrate master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.trial_spawner.detect_player master @a ~ ~1024 ~ 0 1.5 1