
# effect
execute as @e[type=marker,tag=pc.intent.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @e[type=marker,tag=pc.grid,nbt={data:{type:"spac"}},dx=3,dy=200,dz=3,limit=1] run kill @s
execute as @n[type=marker,tag=pc.intent.now,sort=random,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:object/heal_pigman/buff2/2

# fx
playsound minecraft:block.beehive.enter master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.2
particle trial_spawner_detection ~1.5 ~ ~0.0 0 0 0 0 0 force
particle trial_spawner_detection ~1.149 ~ ~0.964 0 0 0 0 0 force
particle trial_spawner_detection ~0.26 ~ ~1.477 0 0 0 0 0 force
particle trial_spawner_detection ~-0.75 ~ ~1.299 0 0 0 0 0 force
particle trial_spawner_detection ~-1.41 ~ ~0.513 0 0 0 0 0 force
particle trial_spawner_detection ~-1.41 ~ ~-0.513 0 0 0 0 0 force
particle trial_spawner_detection ~-0.75 ~ ~-1.299 0 0 0 0 0 force
particle trial_spawner_detection ~0.26 ~ ~-1.477 0 0 0 0 0 force
particle trial_spawner_detection ~1.149 ~ ~-0.964 0 0 0 0 0 force