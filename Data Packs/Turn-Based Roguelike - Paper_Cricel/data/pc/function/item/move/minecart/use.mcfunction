
function pc:item/move/minecart/2
execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:item/move/minecart/2b

# fx
execute facing entity @e[tag=pc.player.selector,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] feet run function pc:item/move/minecart/fx_moving/use
playsound minecraft:entity.minecart.riding master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.iron.step master @a ~ ~1024 ~ 0 2 1