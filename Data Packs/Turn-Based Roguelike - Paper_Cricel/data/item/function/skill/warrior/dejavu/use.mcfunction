
execute as @e[tag=pc.grid.atker,type=minecraft:marker,limit=1] at @s run function item:skill/warrior/dejavu/2
function sys:entity/schedule/use {func:"function item:skill/warrior/dejavu/3 with storage pc:temp rc_item.combat.last_item",delay:10}

# fx
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~1024 ~ 0 0.9 0.5
playsound minecraft:item.spyglass.use master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 1 1