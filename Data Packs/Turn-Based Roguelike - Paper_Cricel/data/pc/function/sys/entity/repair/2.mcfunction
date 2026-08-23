
data modify storage pc:temp repair.entity.repair.hotbar set from storage pc:temp repair.item.hotbar
execute store result storage pc:temp repair.entity.repair.owner int 1 run scoreboard players get @s sl.id

execute as @e[tag=pc.repair.now,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/entity/repair/2b
execute as @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/repair/3 with storage pc:temp repair.entity.repair
function pc:sys/player/hotbar/use

# fx
playsound minecraft:block.anvil.use master @a ~ ~1024 ~ 0 0.75 0.25
playsound minecraft:entity.arrow.hit_player master @a ~ ~1024 ~ 0 1.25 0.65