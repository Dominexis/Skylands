execute unless score @s synb.Item.ground_jaws.duration matches 1.. run return 0
execute unless score @s synb.IEExecCount.ground_jaws matches 2.. run scoreboard players remove @s synb.Item.ground_jaws.duration 1

execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local,nbt={OnGround:1b}] add synb.tmp.candidate
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.type.enemy,tag=synb.ctx.local] add synb.tmp.candidate

execute if score #rand synb.Tmp.Expr matches ..2 as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.tmp.candidate,limit=1,sort=random] \
    unless score @s synb.Item.ground_jaws.bite matches 1.. at @s run function synb:all_items/ground_jaws/_jaw_attack
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.tmp.candidate] remove synb.tmp.candidate

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] if score @s synb.Item.ground_jaws.bite matches 1 run function synb:itemengine/player/damage_enemy_magic {dmg:4}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] if score @s synb.Item.ground_jaws.bite matches 1.. run scoreboard players remove @s synb.Item.ground_jaws.bite 1