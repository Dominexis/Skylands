execute unless score @s synb.IEExecCount.firework matches 2.. run tag @s remove synb.item.firework.loaded
execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @s synb.IEStat.Luck
execute if score #rand synb.Tmp.Expr matches ..30 run tag @s add synb.item.firework.loaded

execute if score @s synb.IEExecCount.firework matches 2.. run return 0

scoreboard players set #independant synb.Tmp.Arg 0
execute if entity @s[tag=!synb.attr.player_in_arena] run scoreboard players set #independant synb.Tmp.Arg 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:firework_rocket,tag=!synb.item.firework.init] at @s run function synb:all_items/firework/_init_firework