data modify storage synb.d:tmp args.heal_amount set value 0
execute store result score #value synb.Tmp.Expr run scoreboard players get @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.ctx.enemy_killed_detector,limit=1] synb.EnemySys.MoneyWorth
scoreboard players remove #value synb.Tmp.Expr 1
execute store result storage synb.d:tmp args.heal_amount int 1 run scoreboard players get #value synb.Tmp.Expr
function synb:itemengine/player/heal with storage synb.d:tmp args

execute if score #value synb.Tmp.Expr matches 1.. at @s run playsound minecraft:entity.player.burp player @s ~ ~ ~ 1