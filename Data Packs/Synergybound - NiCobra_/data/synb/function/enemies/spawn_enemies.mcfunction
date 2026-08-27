# At : [depends]
# Args :
#   - class (macro)
#   - variant (macro)
##

scoreboard players set #money_worth synb.Tmp.Arg 0
$scoreboard players set #enemy_variant synb.Tmp.Arg $(variant)

# >>> SPECIAL LOGIC : challenger

# Rand
scoreboard players set #count synb.Tmp.Expr 0
scoreboard players operation #count synb.Tmp.Expr += @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] synb.IEItemCount.challenger
execute store result score #rand synb.Tmp.Expr run random value 1..100 synb.r:misc_rng
scoreboard players operation #rand synb.Tmp.Expr /= #count synb.Tmp.Expr

# Compute luck
scoreboard players set #luck synb.Tmp.Expr 1
scoreboard players operation #luck synb.Tmp.Expr += @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.challenger=1..}] synb.IEStat.Luck
execute as @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount.challenger=1..}] run scoreboard players remove #luck synb.Tmp.Expr 1
scoreboard players operation #rand synb.Tmp.Expr /= #luck synb.Tmp.Expr

# Ignore
execute if score #enemy_variant synb.Tmp.Arg matches 10.. run scoreboard players set #rand synb.Tmp.Expr 100
execute if score #count synb.Tmp.Expr matches 0 run scoreboard players set #rand synb.Tmp.Expr 100

# Exec
execute store result score #dupl synb.Tmp.Expr run random value 0..1 synb.r:misc_rng
execute if score #rand synb.Tmp.Expr matches ..40 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 2 1.5
execute if score #rand synb.Tmp.Expr matches ..40 run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:skeleton_skull"}
execute if score #rand synb.Tmp.Expr matches ..40 if score #dupl synb.Tmp.Expr matches 0 run scoreboard players add #enemy_variant synb.Tmp.Arg 1
$execute if score #rand synb.Tmp.Expr matches ..40 if score #dupl synb.Tmp.Expr matches 1 positioned ~0.5 ~ ~ run function synb:all_enemies/$(class)

# <<<

$function synb:all_enemies/$(class)

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.new_room_enemy] add synb.type.enemy
$tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.new_room_enemy] add synb.enemy.$(class)
$scoreboard players set @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.new_room_enemy] synb.EnemySys.Variant $(variant)

execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.new_room_enemy] at @s run function synb:enemies/_init_enemy
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.arg.new_room_enemy] remove synb.arg.new_room_enemy

playsound minecraft:entity.allay.hurt hostile @a ~ ~ ~ 0.5 0.7
particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.1 15