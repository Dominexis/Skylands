
function item:move/minecart/2
execute at @s positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function item:move/minecart/2b

# fx
execute facing entity @e[tag=pc.player.selector,limit=1] feet run function item:move/minecart/fx_moving/use
playsound minecraft:entity.minecart.riding master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.iron.step master @a ~ ~1024 ~ 0 2 1