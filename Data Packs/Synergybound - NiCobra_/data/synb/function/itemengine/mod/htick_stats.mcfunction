# As : player
##

# Base stats
scoreboard players operation @s synb.IEStat.Dmg = %base synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.HP = %base synb.IEStat.HP
scoreboard players operation @s synb.IEStat.Reward = %base synb.IEStat.Reward
scoreboard players operation @s synb.IEStat.AtkSpeed = %base synb.IEStat.AtkSpeed
scoreboard players operation @s synb.IEStat.Ammo = %base synb.IEStat.Ammo
scoreboard players operation @s synb.IEStat.MovSpeed = %base synb.IEStat.MovSpeed
scoreboard players operation @s synb.IEStat.ShieldDelay = %base synb.IEStat.ShieldDelay
scoreboard players operation @s synb.IEStat.Magic = %base synb.IEStat.Magic

scoreboard players set @s synb.IEStat.MeleeDmg 0
scoreboard players set @s synb.IEStat.RangedDmg 0
scoreboard players set @s synb.IEStat.Luck 1

# Ench
scoreboard players set @s synb.IEEnch.Piercing 0
scoreboard players set @s synb.IEEnch.Multishot 0
scoreboard players set @s synb.IEEnch.QuickCharge 0
scoreboard players set @s synb.IEEnch.Sharpness 0
scoreboard players set @s synb.IEEnch.Knockback 0
scoreboard players set @s synb.IEEnch.FireAspect 0
scoreboard players set @s synb.IEEnch.SweepingEdge 0
scoreboard players set @s synb.IEEnch.Looting 0
scoreboard players set @s synb.IEEnch.BaneOfArthropods 0
scoreboard players set @s synb.IEEnch.Smite 0

# Stats compute
function synb:itemengine/executor/run {func:"stats"}
scoreboard players operation @s synb.IEStat.HP -= @s synb.IEPlayer.CurseHP
scoreboard players operation @s synb.IEStat.Reward -= @s synb.IEPlayer.CurseReward
scoreboard players operation @s synb.IEStat.MeleeDmg += @s synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.RangedDmg += @s synb.IEStat.Dmg
function synb:itemengine/executor/run {func:"post_stats"}

# >>> SPECIAL LOGIC : balance
execute if score @s synb.IEItemCount.balance matches 1.. run function synb:all_items/balance/outer_calls/final_post_stats
# <<<

# Minimum values
execute if score @s synb.IEStat.AtkSpeed matches ..9 run scoreboard players set @s synb.IEStat.AtkSpeed 10
execute if score @s synb.IEStat.HP matches ..0 run scoreboard players set @s synb.IEStat.HP 1
execute if score @s synb.IEStat.Dmg matches ..9 run scoreboard players set @s synb.IEStat.Dmg 10
execute if score @s synb.IEStat.MeleeDmg matches ..9 run scoreboard players set @s synb.IEStat.MeleeDmg 10
execute if score @s synb.IEStat.RangedDmg matches ..9 run scoreboard players set @s synb.IEStat.RangedDmg 10
execute if score @s synb.IEStat.MagicDmg matches ..0 run scoreboard players set @s synb.IEStat.MagicDmg 1
execute if score @s synb.IEStat.Ammo matches ..0 run scoreboard players set @s synb.IEStat.Ammo 0
execute if score @s synb.IEStat.Magic matches ..0 run scoreboard players set @s synb.IEStat.Magic 0
execute if score @s synb.IEStat.MovSpeed matches ..50 run scoreboard players set @s synb.IEStat.MovSpeed 50

# Post-compute
scoreboard players set @s synb.IEStat.AtkDelay 1000
scoreboard players operation @s synb.IEStat.AtkDelay /= @s synb.IEStat.AtkSpeed
scoreboard players operation @s synb.IEStat.MagicDmg = @s synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.MagicDmg += @s synb.IEStat.Magic