##

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.ctx.local,tag=synb.type.merchant,tag=synb.attr.out_of_range] at @s run tp @s ~ ~10 ~
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.ctx.local,tag=synb.type.merchant] remove synb.attr.out_of_range
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.local,scores={synb.Event.Traded=1..}] at @s run function synb:elements/merchant/_player_traded
# Max trade slots
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant] run data remove entity @s Offers.Recipes[7]