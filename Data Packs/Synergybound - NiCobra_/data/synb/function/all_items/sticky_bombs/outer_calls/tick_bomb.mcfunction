tag @e[type=!minecraft:player,tag=synb.type.death_detector,scores={synb.Item.sticky_bombs.delay=1..},distance=..4,sort=nearest,limit=1] add synb.tmp.follow

execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.follow] run kill @s
execute if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.follow,scores={synb.Item.sticky_bombs.delay=1}] run particle minecraft:block{block_state:"minecraft:stone"} ~ ~ ~ 0 0 0 1 5
execute positioned as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.follow] run tp @s ~ ~0.5 ~

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.follow] remove synb.tmp.follow