# As/At : collectible
##

data modify storage synb.d:tmp args.item_id set from entity @s item.components.minecraft:custom_data.collectible
tag @p[team=sl.player,tag=synb.type.player,distance=..1] add synb.tmp.hm_triggered

# [SKYLANDS: ABSCOORDS]
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.hm_triggered] at @s run function synb:itemengine/player/add_item with storage synb.d:tmp args
tp @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.hm_triggered] 3321 69 -2378
playsound minecraft:block.beacon.power_select master @a 3321 69 -2378 1.5 0.6
particle minecraft:large_smoke 3321 69 -2378 0.2 0.8 0.2 0.087 30 force

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.hm_triggered] remove synb.tmp.hm_triggered