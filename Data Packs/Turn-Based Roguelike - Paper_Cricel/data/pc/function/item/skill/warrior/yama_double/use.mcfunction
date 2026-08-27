
execute as @e[predicate=pc:sys/entity/enemy,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:item/skill/warrior/yama_double/fx/use

# fx
playsound minecraft:entity.ravager.death master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:block.bell.use master @a ~ ~1024 ~ 0 0.9 0.75
playsound minecraft:entity.firework_rocket.launch master @a ~ ~1024 ~ 0 0.75 0.75