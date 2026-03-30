execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.ctx.enemy_killed_detector,tag=synb.item.arrow_ripper.marked] run return 0
playsound minecraft:entity.arrow.hit player @s ~ ~ ~ 1 0.8
execute if score @s synb.IEPlayer.CurrentAmmo < @s synb.IEStat.Ammo run scoreboard players add @s synb.IEPlayer.CurrentAmmo 1