scoreboard players add @s synb.Item.spirit_fire.shots 1
execute if score @s synb.Item.spirit_fire.shots matches 3.. run playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.8

scoreboard players set #duration synb.Tmp.Expr 40
scoreboard players operation #duration synb.Tmp.Expr *= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEItemCount.spirit_fire

# Ignite
execute unless score @s synb.Item.spirit_fire.shots matches 3.. run return 0
particle minecraft:soul_fire_flame ~ ~0.5 ~ 0.2 0.5 0.2 0.2 20
execute if score @s synb.Item.spirit_fire.shots matches 3.. run scoreboard players operation @s synb.Item.spirit_fire.burn += #duration synb.Tmp.Expr
execute if score @s synb.Item.spirit_fire.shots matches 3.. run scoreboard players set @s synb.Item.spirit_fire.shots 0