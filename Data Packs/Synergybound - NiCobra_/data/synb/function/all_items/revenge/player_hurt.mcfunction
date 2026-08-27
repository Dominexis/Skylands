execute if score @s synb.IEPlayer.CurrentAmmo < @s synb.IEStat.Ammo run scoreboard players add @s synb.IEPlayer.CurrentAmmo 1

# Don't increment for other relics, already managed by stats
execute if score @s synb.IEExecCount.revenge matches 2.. run return 0
scoreboard players add @s synb.Item.revenge.dmg_inc 7