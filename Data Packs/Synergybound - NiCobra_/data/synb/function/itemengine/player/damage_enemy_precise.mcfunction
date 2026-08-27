# /!\ Uncompiled
# As : enemy
# Args :
#   - dmg (macro)
#   - generic_player_src (tag ctx)
##

$scoreboard players set #dmg synb.Tmp.Expr $(dmg)
execute if score @s synb.Status.Vulnerable matches 1.. run scoreboard players operation #dmg synb.Tmp.Expr *= num2 synb.Const

# >>> SPECIAL LOGIC : vul_booster
scoreboard players set #pow synb.Tmp.Arg 0
scoreboard players operation #pow synb.Tmp.Arg = @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEItemCount.vul_booster
execute if score @s synb.Status.Vulnerable matches 1.. if score #pow synb.Tmp.Arg matches 1.. run particle minecraft:squid_ink ~ ~0.5 ~ 0 1 0 0.2 20
execute if score @s synb.Status.Vulnerable matches 1.. if score #pow synb.Tmp.Arg matches 1.. run playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 1 1.5
scoreboard players add #pow synb.Tmp.Arg 1
scoreboard players operation #val synb.Tmp.Arg = #dmg synb.Tmp.Expr
execute if score @s synb.Status.Vulnerable matches 1.. run function synb:utils/rec_exponent
scoreboard players operation #dmg synb.Tmp.Expr = #val synb.Tmp.Arg
# <<<

# >>> SPECIAL LOGIC : codex
scoreboard players operation @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.IEItemCount.codex=1..},tag=synb.ctx.generic_player_src] synb.Item.codex.dmg_count += #dmg synb.Tmp.Expr
# <<<

execute store result score #health synb.Tmp.Expr run data get entity @s Health 1000
scoreboard players operation #health synb.Tmp.Expr -= #dmg synb.Tmp.Expr

# Effects
execute store result storage synb.d:tmp args.dmg_hearts long 0.001 run scoreboard players get #dmg synb.Tmp.Expr
execute at @s run function synb:itemengine/player/_damage_effects with storage synb.d:tmp args

# Kill
execute if score #health synb.Tmp.Expr matches ..0 run function synb:itemengine/player/kill_enemy
execute if score #health synb.Tmp.Expr matches ..0 run return 1

# Set health
execute store result entity @s Health double 0.001 run scoreboard players get #health synb.Tmp.Expr

# Damage trigger
scoreboard players reset #already_target synb.Tmp.Expr
execute if entity @s[tag=synb.ctx.enemy_hurt_target] run scoreboard players set #already_target synb.Tmp.Expr 1
tag @s add synb.ctx.enemy_hurt_target
execute if score #dmg synb.Tmp.Expr matches 1.. as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] run function synb:itemengine/executor/run {func:"enemy_hurt"}
execute unless score #already_target synb.Tmp.Expr matches 1 run tag @s remove synb.ctx.enemy_hurt_target

# Used for custom mobs
tag @s add synb.attr.just_hit