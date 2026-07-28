
execute as @n[tag=pc.intent.now,tag=!pc.intent.potential,type=minecraft:marker,sort=random] at @s run function entity:piglin_heal/summon1/2
function sys:combat/turn/end_act

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.rally",storage:"pc:lang",interpret:1b}}
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