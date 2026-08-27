# Using @s for temp values because why not

# Removes base
scoreboard players operation @s synb.IEStat.MeleeDmg -= %base synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.RangedDmg -= %base synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.Reward -= %base synb.IEStat.Reward
scoreboard players operation @s synb.IEStat.AtkSpeed -= %base synb.IEStat.AtkSpeed
scoreboard players operation @s synb.IEStat.MovSpeed -= %base synb.IEStat.MovSpeed
scoreboard players operation @s synb.IEStat.ShieldDelay -= %base synb.IEStat.ShieldDelay
scoreboard players operation @s synb.IEStat.ShieldDelay *= neg1 synb.Const
scoreboard players operation @s synb.IEStat.Magic -= %base synb.IEStat.Magic

# Flatten damage
scoreboard players operation @s synb.IEStat.Dmg = @s synb.IEStat.MeleeDmg
scoreboard players operation @s synb.IEStat.Dmg += @s synb.IEStat.RangedDmg
scoreboard players operation @s synb.IEStat.Dmg /= num2 synb.Const

# Mult by weights
scoreboard players operation @s synb.IEStat.Dmg *= num750 synb.Const
scoreboard players operation @s synb.IEStat.Reward *= num900 synb.Const
scoreboard players operation @s synb.IEStat.Reward *= num10 synb.Const
scoreboard players operation @s synb.IEStat.AtkSpeed *= num240 synb.Const
scoreboard players operation @s synb.IEStat.MovSpeed *= num400 synb.Const
scoreboard players operation @s synb.IEStat.ShieldDelay *= num180 synb.Const
scoreboard players operation @s synb.IEStat.ShieldDelay *= num10 synb.Const
scoreboard players operation @s synb.IEStat.Magic *= num500 synb.Const
scoreboard players operation @s synb.IEStat.Magic *= num10 synb.Const

# Sum of stats
scoreboard players set #sum synb.Tmp.Expr 0
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.Dmg
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.Reward
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.AtkSpeed
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.MovSpeed
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.ShieldDelay
scoreboard players operation #sum synb.Tmp.Expr += @s synb.IEStat.Magic
scoreboard players operation #sum synb.Tmp.Expr /= num6 synb.Const

# Bonus
scoreboard players operation #bonus synb.Tmp.Expr = @s synb.IEItemCount.balance
scoreboard players remove #bonus synb.Tmp.Expr 1
scoreboard players operation #bonus synb.Tmp.Expr *= num500 synb.Const
scoreboard players operation #bonus synb.Tmp.Expr *= num10 synb.Const
scoreboard players operation #sum synb.Tmp.Expr += #bonus synb.Tmp.Expr

# Re-attribute stats 
scoreboard players operation @s synb.IEStat.Dmg = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.Reward = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.AtkSpeed = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.MovSpeed = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.ShieldDelay = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.Magic = #sum synb.Tmp.Expr
scoreboard players operation @s synb.IEStat.Dmg /= num75 synb.Const
scoreboard players operation @s synb.IEStat.Reward /= num900 synb.Const
scoreboard players operation @s synb.IEStat.AtkSpeed /= num24 synb.Const
scoreboard players operation @s synb.IEStat.MovSpeed /= num40 synb.Const
scoreboard players operation @s synb.IEStat.ShieldDelay /= num180 synb.Const
scoreboard players operation @s synb.IEStat.Magic /= num500 synb.Const

# Round values
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.Dmg
function synb:utils/round
scoreboard players operation @s synb.IEStat.Dmg = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.Reward
function synb:utils/round
scoreboard players operation @s synb.IEStat.Reward = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.AtkSpeed
function synb:utils/round
scoreboard players operation @s synb.IEStat.AtkSpeed = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.MovSpeed
function synb:utils/round
scoreboard players operation @s synb.IEStat.MovSpeed = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.ShieldDelay
function synb:utils/round
scoreboard players operation @s synb.IEStat.ShieldDelay = #val synb.Tmp.Arg
scoreboard players operation #val synb.Tmp.Arg = @s synb.IEStat.Magic
function synb:utils/round
scoreboard players operation @s synb.IEStat.Magic = #val synb.Tmp.Arg

# Restore base
scoreboard players operation @s synb.IEStat.Dmg += %base synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.Reward += %base synb.IEStat.Reward
scoreboard players operation @s synb.IEStat.AtkSpeed += %base synb.IEStat.AtkSpeed
scoreboard players operation @s synb.IEStat.MovSpeed += %base synb.IEStat.MovSpeed
scoreboard players operation @s synb.IEStat.ShieldDelay *= neg1 synb.Const
scoreboard players operation @s synb.IEStat.ShieldDelay += %base synb.IEStat.ShieldDelay
scoreboard players operation @s synb.IEStat.Magic += %base synb.IEStat.Magic

# Re-equal
scoreboard players operation @s synb.IEStat.MeleeDmg = @s synb.IEStat.Dmg
scoreboard players operation @s synb.IEStat.RangedDmg = @s synb.IEStat.Dmg