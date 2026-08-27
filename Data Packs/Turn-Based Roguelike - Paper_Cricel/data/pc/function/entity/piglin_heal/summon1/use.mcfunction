
execute as @n[tag=pc.intent.now,tag=!pc.intent.potential,type=minecraft:marker,sort=random,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/piglin_heal/summon1/2
function pc:sys/combat/turn/end_act

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.rally",storage:"pc:lang",interpret:1b}}
playsound minecraft:block.beehive.enter master @a ~ ~1024 ~ 0 1.2 1
particle minecraft:trial_spawner_detection ~1.5 ~ ~0.0 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~1.149 ~ ~0.964 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~0.26 ~ ~1.477 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-0.75 ~ ~1.299 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-1.41 ~ ~0.513 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-1.41 ~ ~-0.513 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-0.75 ~ ~-1.299 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~0.26 ~ ~-1.477 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~1.149 ~ ~-0.964 0 0 0 0 0 force