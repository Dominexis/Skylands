execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 2 run return 0
execute if score @s synb.IEExecCount.spark_wounds matches 2.. run return 0
execute if score @s synb.IEExecLayer matches 3.. run return 0

execute store result score #dmg synb.Tmp.Expr run scoreboard players get @s synb.IEStat.RangedDmg
scoreboard players operation #dmg synb.Tmp.Expr *= num100 synb.Const
scoreboard players operation #dmg synb.Tmp.Expr *= @s synb.IEItemCount.spark_wounds
execute store result storage synb.d:tmp args.dmg double 1 run scoreboard players get #dmg synb.Tmp.Expr

# Enables two players to target the same entity and get the bonus, it's eaither that or too restrictive, let's call that a feature
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1] unless score @s synb.Item.spark_wounds.last_player_id = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEPlayer.Registered at @s run function synb:all_items/spark_wounds/_bonus_dmg

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy] if score @s synb.Item.spark_wounds.last_player_id = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEPlayer.Registered run scoreboard players reset @s synb.Item.spark_wounds.last_player_id

scoreboard players operation @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target,limit=1] synb.Item.spark_wounds.last_player_id = @s synb.IEPlayer.Registered