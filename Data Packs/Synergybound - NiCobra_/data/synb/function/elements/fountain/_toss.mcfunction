# As : player
# At : dropped_money
##

scoreboard players set #disable synb.Tmp.Expr 0
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.arena,scores={synb.ASys.ArenaID=2},tag=!synb.attr.disable_special_wave,tag=synb.ctx.local,limit=1] synb.ASys.CurrentCycle matches 3 run scoreboard players set #disable synb.Tmp.Expr 1
execute if score #disable synb.Tmp.Expr matches 1 if entity @e[type=minecraft:item,tag=synb.type.dropped_money,distance=..1,scores={synb.World.ItemTick=4}] run tellraw @s [{"text":"[Arena] ","color":"gray"},{"text":"Healing Fountain disabled because it would cancel the optional challenge, ending your run here.","color":"yellow"}]
execute if score #disable synb.Tmp.Expr matches 1 run return 0

execute store result score #money_count synb.Tmp.Expr run data get entity @e[type=minecraft:item,tag=synb.type.dropped_money,distance=..1,limit=1,sort=nearest] Item.count
scoreboard players operation @s synb.PSys.FountainCount += #money_count synb.Tmp.Expr

kill @e[type=minecraft:item,tag=synb.type.dropped_money,distance=..1,limit=1,sort=nearest]