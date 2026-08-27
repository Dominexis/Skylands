scoreboard players remove @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Item.reaper.delay=1..},tag=synb.ctx.local] synb.Item.reaper.delay 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Item.reaper.delay=0},tag=synb.ctx.local] at @s run function synb:all_items/reaper/_kill

execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Item.reaper.delay=2},tag=synb.ctx.local] run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.2 0.5
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Item.reaper.delay=2},tag=synb.ctx.local] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0.1 1
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.Item.reaper.delay=1..},tag=synb.ctx.local] run particle minecraft:sculk_soul ~ ~0.5 ~ 0.2 1 0.2 0.05 1

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,scores={synb.EnemySys.TimeAlive=5..},tag=synb.ctx.local] unless score @s synb.Item.reaper.delay matches 0.. at @s run function synb:all_items/reaper/_check_health