
# effect
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s positioned ~-1.5 ~-100 ~-1.5 unless entity @e[type=minecraft:marker,dx=3,dy=200,dz=3,tag=pc.grid,limit=1,nbt={data:{type:"spac"}}] run kill @s
execute as @n[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now,sort=random] at @s run function pc:object/heal_pigman/buff2/2

# fx
playsound minecraft:block.beehive.enter master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.2
particle minecraft:trial_spawner_detection ~1.5 ~ ~0.0 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~1.149 ~ ~0.964 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~0.26 ~ ~1.477 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-0.75 ~ ~1.299 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-1.41 ~ ~0.513 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-1.41 ~ ~-0.513 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~-0.75 ~ ~-1.299 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~0.26 ~ ~-1.477 0 0 0 0 0 force
particle minecraft:trial_spawner_detection ~1.149 ~ ~-0.964 0 0 0 0 0 force