execute align y run summon minecraft:block_display ~-0.5 ~ ~-0.5 {Tags:[synb.type.item_associate,synb.item.pyro.fire,synb.tmp.new],block_state:{Name:"minecraft:fire"}}
scoreboard players add @e[type=minecraft:block_display,x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.new] synb.Item.pyro.fire_health 5
scoreboard players operation @e[type=minecraft:block_display,x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.new] synb.Item.pyro.fire_health += @s synb.IEStat.Magic
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.new] run function synb:all_items/pyro/_update_fire
tag @e[type=minecraft:block_display,x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,tag=synb.tmp.new] remove synb.tmp.new
playsound minecraft:block.fire.ambient block @a ~ ~ ~ 2 1