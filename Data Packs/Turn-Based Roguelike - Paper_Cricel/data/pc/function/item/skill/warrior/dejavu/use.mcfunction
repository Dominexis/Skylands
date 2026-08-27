
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/warrior/dejavu/2
function pc:sys/entity/schedule/use {func:"function pc:item/skill/warrior/dejavu/3 with storage pc:temp rc_item.combat.last_item",delay:10}

# fx
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~1024 ~ 0 0.9 0.5
playsound minecraft:item.spyglass.use master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 1 1