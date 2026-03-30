execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.Luck
execute if score #rand synb.Tmp.Expr matches 51.. run return 0

scoreboard players set #vul synb.Tmp.Expr 20
scoreboard players operation #vul synb.Tmp.Expr *= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.Magic
scoreboard players add #vul synb.Tmp.Expr 80

execute if score #vul synb.Tmp.Expr matches 1.. run scoreboard players operation @s synb.Status.Vulnerable += #vul synb.Tmp.Expr
execute if score #vul synb.Tmp.Expr matches 1.. run playsound minecraft:entity.zombie_villager.converted hostile @a ~ ~ ~ 0.5 2