# As/At : player
##

clear @s *[minecraft:custom_data~{merchant_item:1}]

tag @s add synb.arg.just_traded
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.type.merchant,tag=synb.ctx.local,limit=1] add synb.arg.target_merchant
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[0].uses at @s run function synb:elements/merchant/_proceed_trade {slot:0}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[1].uses at @s run function synb:elements/merchant/_proceed_trade {slot:1}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[2].uses at @s run function synb:elements/merchant/_proceed_trade {slot:2}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[3].uses at @s run function synb:elements/merchant/_proceed_trade {slot:3}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[4].uses at @s run function synb:elements/merchant/_proceed_trade {slot:4}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[5].uses at @s run function synb:elements/merchant/_proceed_trade {slot:5}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] if data entity @s Offers.Recipes[6].uses at @s run function synb:elements/merchant/_proceed_trade {slot:6}
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:villager,tag=synb.arg.target_merchant] remove synb.arg.target_merchant
tag @s remove synb.arg.just_traded