# As/At : merchant_button
##

tag @s add synb.attr.pressed

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.player,tag=synb.ctx.local] add synb.tmp.listener
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.type.dead_player,tag=synb.ctx.local] add synb.tmp.listener
# SPECTATOR SPECIAL INCLUSION
tag @a[gamemode=spectator,distance=..20] add synb.tmp.listener
tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.listener] [{"text":"\n        ---","color":"gray"},{"text":" Relics from the merchant ","color":"white","bold":true},{"text":"---\n","color":"gray"}]

scoreboard players set #ind synb.Tmp.Expr 0
execute as @e[type=minecraft:villager,tag=synb.type.merchant,distance=..5,sort=nearest,limit=1] run function synb:elements/merchant_button/_rec_merch {ind:0}

tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.listener] {"text":""}

# >>> SPECIAL LOGIC : vision
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.listener,scores={synb.IEItemCount.vision=2..}] run function synb:all_items/vision/outer_calls/trigger_deep_view
# <<<

tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500] remove synb.tmp.listener