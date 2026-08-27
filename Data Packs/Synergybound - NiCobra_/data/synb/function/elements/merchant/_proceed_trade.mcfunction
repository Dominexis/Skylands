# /!\ Uncompiled
# As/At : merchant
# Args :
#   - slot (macro)
#   - just_traded (tag arg)
##

$data modify storage synb.d:tmp args.item_id set from entity @s Offers.Recipes[$(slot)].sell.components.minecraft:custom_data.collectible
$data remove entity @s Offers.Recipes[$(slot)]
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.arg.just_traded] at @s run function synb:itemengine/player/add_item
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] at @s run function synb:itemengine/executor/run {func:"player_trade"}

# Close GUI
tp @s[tag=!synb.attr.out_of_range] ~ ~-10 ~
tag @s add synb.attr.out_of_range

# Cauldron gain
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron,tag=synb.ctx.local,limit=1] add synb.tmp.close_cauldron
scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.close_cauldron] synb.Shop.RerollProgress 1
execute if score @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.close_cauldron,limit=1] synb.Shop.RerollProgress matches 5.. run \
    scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.close_cauldron] synb.Shop.RerollProgress 4
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.close_cauldron,scores={synb.Shop.RerollProgress=..3}] run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 1.5
execute at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.close_cauldron,scores={synb.Shop.RerollProgress=4}] run playsound block.respawn_anchor.charge block @a ~ ~ ~ 1 0.7
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.close_cauldron] remove synb.tmp.close_cauldron