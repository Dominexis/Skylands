execute unless score #enemy_hurt_dmg_type synb.Tmp.Ctx matches 1 run return 0
execute if score @s synb.IEExecLayer matches 2.. run return 0

# ..49 to allow multiple copies
execute if score @s synb.Item.cystal_sharp.cd matches 1..49 run return 0

scoreboard players set @s synb.Item.cystal_sharp.cd 50

function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:amethyst_shard"}
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_hurt_target] at @s run function synb:itemengine/player/damage_enemy_magic {dmg:4}