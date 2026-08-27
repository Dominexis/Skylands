# As : player
##

scoreboard players remove @s synb.IEPlayer.CurrentAmmo 1

scoreboard players operation #quick_upgrade synb.Tmp.Expr = @s synb.IEEnch.QuickCharge
scoreboard players add #quick_upgrade synb.Tmp.Expr 1
scoreboard players operation @s synb.IEPlayer.CrossDelay = @s synb.IEStat.AtkDelay
scoreboard players operation @s synb.IEPlayer.CrossDelay /= #quick_upgrade synb.Tmp.Expr

function synb:itemengine/executor/run {func:"used_ranged"}