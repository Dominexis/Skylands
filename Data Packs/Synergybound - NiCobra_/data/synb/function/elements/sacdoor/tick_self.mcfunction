# As/At : sacdoor
##

execute if entity @s[tag=synb.attr.off] run return 0

execute if entity @s[tag=synb.attr.x_axis] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 1 1 0 0.1 5
execute if entity @s[tag=synb.attr.z_axis] run particle minecraft:dust{color:[1.0,0.0,0.0],scale:0.6} ~ ~ ~ 0 1 1 0.1 5

execute if entity @s[tag=synb.attr.x_axis] positioned ~-1.5 ~-1 ~-0.5 run tag @a[dx=2,dy=2,dz=0,team=sl.player,tag=synb.type.player,sort=random,limit=1] add synb.tmp.sac_target
execute if entity @s[tag=synb.attr.z_axis] positioned ~-0.5 ~-1 ~-1.5 run tag @a[dx=0,dy=2,dz=2,team=sl.player,tag=synb.type.player,sort=random,limit=1] add synb.tmp.sac_target

scoreboard players set #bypass synb.Tmp.Expr 0
# >>> SPECIAL LOGIC : free_sacrifices
execute if score @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target,limit=1] synb.IEItemCount.free_sacrifices matches 1.. run scoreboard players set #bypass synb.Tmp.Expr 1
execute if score @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target,limit=1] synb.IEItemCount.free_sacrifices matches 1.. run playsound minecraft:block.vault.insert_item block @a ~ ~ ~ 1.8 0.8
# <<<
execute if score @s synb.Shop.SacdoorCondition matches 1 if score #bypass synb.Tmp.Expr matches 0 run scoreboard players add @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] synb.IEPlayer.DamageTaken 14
execute if score @s synb.Shop.SacdoorCondition matches 2 if score #bypass synb.Tmp.Expr matches 0 run scoreboard players add @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] synb.IEPlayer.CurseHP 8
execute if score @s synb.Shop.SacdoorCondition matches 3 if score #bypass synb.Tmp.Expr matches 0 run scoreboard players add @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] synb.IEPlayer.CurseReward 3

# Effects
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] if entity @s[tag=synb.attr.x_axis] run particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~ ~ 1 1 0 0.1 40
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] if entity @s[tag=synb.attr.z_axis] run particle minecraft:block{block_state:"minecraft:red_concrete"} ~ ~ ~ 0 1 1 0.1 40
execute at @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] run particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 1 50
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] minecraft:blindness 1 0 true
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] minecraft:speed 1 2 true
execute at @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] if score #bypass synb.Tmp.Expr matches 0 run playsound minecraft:entity.zombie_villager.cure neutral @a ~ ~ ~ 0.4 1
execute at @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] if score #bypass synb.Tmp.Expr matches 0 run playsound minecraft:entity.allay.death player @a ~ ~ ~ 1 0.5
execute at @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] run stopsound @a[distance=..20] block minecraft:block.portal.ambient

# Self-disable
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] run kill @e[type=minecraft:text_display,tag=synb.type.text,distance=..1.5]
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] run tag @s add synb.attr.off
tag @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.tmp.sac_target] remove synb.tmp.sac_target

execute store result score #rand synb.Tmp.Expr run random value 1..3
execute if score #rand synb.Tmp.Expr matches 1 if score t100 synb.TickCycle matches 1 run playsound minecraft:block.portal.ambient block @a ~ ~ ~ 1 0.5