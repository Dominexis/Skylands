tag @s add synb.item.pickaxe.used
tag @s remove synb.item.pickaxe.will_destroy

execute if items entity @s weapon.mainhand minecraft:glass run return 0

data modify entity @s equipment.mainhand set value {id:"minecraft:stick",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:1.0d,operation:"add_value"}]}}
data remove entity @s equipment.offhand

# Special interaction when double, 10% chance to completely remove weapon
execute store result score #rand synb.Tmp.Expr run random value 1..200 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src] synb.IEItemCount.pickaxe
scoreboard players operation #rand synb.Tmp.Expr /= @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src] synb.IEStat.Luck
execute if score @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEItemCount.pickaxe matches 2.. if score #rand synb.Tmp.Expr matches ..10 run data remove entity @s equipment.mainhand

playsound minecraft:entity.zombie.break_wooden_door neutral @a ~ ~ ~ 0.7 1
execute anchored eyes positioned ^-0.3 ^ ^0.7 run particle minecraft:block{block_state:"minecraft:oak_log"} ~ ~ ~ 0.1 0.2 0.1 0.2 20