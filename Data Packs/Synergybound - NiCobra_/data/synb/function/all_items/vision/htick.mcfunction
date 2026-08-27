# Need a separate scoreboard instead of LastTickDmg because damage can happen at any time in-between
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] unless score @s synb.Item.vision.last_hp = @s synb.World.PreciseHealth run function synb:all_items/vision/_update_health
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] run scoreboard players operation @s synb.Item.vision.last_hp = @s synb.World.PreciseHealth

# Collectible reveal
execute if score @s[tag=!synb.item.vision.sneaking] synb.Status.Sneak matches 1 \
    as @e[type=minecraft:item_display,tag=synb.type.collectible,distance=..5,sort=nearest,limit=1] at @s run function synb:all_items/vision/_reveal_item
execute if score @s[tag=!synb.item.vision.sneaking] synb.Status.Sneak matches 1 run tag @s add synb.item.vision.sneaking
execute unless score @s[tag=synb.item.vision.sneaking] synb.Status.Sneak matches 1 run tag @s remove synb.item.vision.sneaking