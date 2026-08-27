particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.5 0.2 0.02 1

scoreboard players operation #t synb.Tmp.Expr = @s synb.Item.spirit_fire.burn
scoreboard players operation #t synb.Tmp.Expr %= num5 synb.Const

scoreboard players operation #dmg synb.Tmp.Expr = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.Magic
scoreboard players operation #dmg synb.Tmp.Expr *= num200 synb.Const
scoreboard players add #dmg synb.Tmp.Expr 1000
execute store result storage synb.d:tmp args.dmg int 1 run scoreboard players get #dmg synb.Tmp.Expr

execute if score #t synb.Tmp.Expr matches 0 run function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args
scoreboard players remove @s synb.Item.spirit_fire.burn 1