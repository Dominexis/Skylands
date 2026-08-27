# As/At : reroll_cauldron
##

execute unless entity @e[type=minecraft:interaction,tag=synb.type.blocker,distance=..1] run summon minecraft:interaction ~ ~ ~ {Tags:["synb.type.blocker"],width:1.3f,height:1.3f}

# Appearance
execute if score @s synb.Shop.RerollProgress matches 0 run setblock ~ ~ ~ minecraft:respawn_anchor[charges=0]
execute if score @s synb.Shop.RerollProgress matches 1 run setblock ~ ~ ~ minecraft:respawn_anchor[charges=1]
execute if score @s synb.Shop.RerollProgress matches 2 run setblock ~ ~ ~ minecraft:respawn_anchor[charges=2]
execute if score @s synb.Shop.RerollProgress matches 3 run setblock ~ ~ ~ minecraft:respawn_anchor[charges=3]
execute if score @s synb.Shop.RerollProgress matches 4.. run setblock ~ ~ ~ minecraft:respawn_anchor[charges=4]

# Feed
tag @e[type=minecraft:item,tag=synb.type.dropped_money,distance=..1.2,sort=nearest,limit=1] add synb.tmp.to_consume
execute if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.to_consume] run playsound block.respawn_anchor.charge block @a ~ ~ ~ 0.5 2
execute if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.to_consume] run particle minecraft:dust{color:[0.7,0.1,1.0],scale:0.5} ~ ~1.1 ~ 0.2 0 0.2 1.0 10
execute store result score #money_count synb.Tmp.Expr run data get entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.to_consume,limit=1] Item.count
scoreboard players operation @s synb.Shop.RerollProgress += #money_count synb.Tmp.Expr
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:item,tag=synb.tmp.to_consume]

# Completion
execute if score @s synb.Shop.RerollProgress matches 5.. run function synb:elements/cauldron/_trigger