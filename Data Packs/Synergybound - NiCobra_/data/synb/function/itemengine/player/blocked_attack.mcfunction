# As/At : player
##

# Cooldown
scoreboard players operation @s synb.IEPlayer.ShieldCD = @s synb.IEStat.ShieldDelay

# Sound
scoreboard players set #disable_sound synb.Tmp.Expr 0
# >>> SPECIAL LOGIC : pure_shield
execute if score @s synb.IEItemCount.pure_shield matches 1.. if entity @e[type=!minecraft:player,tag=synb.type.enemy,distance=..4] run scoreboard players set #disable_sound synb.Tmp.Expr 1
# <<<
execute unless score #disable_sound synb.Tmp.Expr matches 1 run playsound minecraft:item.shield.break player @a ~ ~ ~ 0.7 0.5

# Block
execute on attacker run tag @s[tag=synb.type.enemy] add synb.ctx.enemy_blocked_src
execute on attacker on passengers run tag @s[tag=synb.type.enemy] add synb.ctx.enemy_blocked_src

# >>> SPECIAL LOGIC : crown
execute if score @s synb.IEItemCount.crown matches 1 run tag @e[type=!minecraft:player,tag=synb.type.enemy,distance=..3.2] add synb.ctx.enemy_blocked_src
execute if score @s synb.IEItemCount.crown matches 2 run tag @e[type=!minecraft:player,tag=synb.type.enemy,distance=..6] add synb.ctx.enemy_blocked_src
execute if score @s synb.IEItemCount.crown matches 3.. run tag @e[type=!minecraft:player,tag=synb.type.enemy,distance=..13] add synb.ctx.enemy_blocked_src
# <<<

# >>> SPECIAL LOGIC : vul_rod
execute if score @s synb.IEItemCount.vul_rod matches 1.. run scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_blocked_src] synb.Status.Vulnerable 2
# <<<

scoreboard players add @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_blocked_src] synb.Status.Frozen 30
function synb:itemengine/executor/run {func:"used_shield"}
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.ctx.enemy_blocked_src] remove synb.ctx.enemy_blocked_src