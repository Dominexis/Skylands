scoreboard players operation #duration synb.Tmp.Expr = @s synb.IEItemCount.vul_rod
scoreboard players remove #duration synb.Tmp.Expr 1
scoreboard players operation #duration synb.Tmp.Expr *= num20 synb.Const
scoreboard players add #duration synb.Tmp.Expr 3

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local,scores={synb.Status.Frozen=1..}] \
    unless score @s synb.Status.Vulnerable >= #duration synb.Tmp.Expr run scoreboard players operation @s synb.Status.Vulnerable = #duration synb.Tmp.Expr