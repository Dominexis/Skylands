
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.effect.void_area,type=minecraft:item_display,dx=2,dy=200,dz=2,limit=1] at @s run function pc:effect/void_area/fx/clear/use

# fx
playsound minecraft:block.vault.deactivate master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.warden.death master @a ~ ~1024 ~ 0 1.25 0.25