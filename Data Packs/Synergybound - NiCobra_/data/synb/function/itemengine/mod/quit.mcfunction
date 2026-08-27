# As : player

attribute @s minecraft:attack_damage modifier remove synb.m:ie.set_zero
attribute @s minecraft:max_health modifier remove synb.m:ie.set_zero
attribute @s minecraft:movement_speed modifier remove synb.m:ie.set_zero
attribute @s minecraft:attack_speed modifier remove synb.m:ie.set_zero

attribute @s minecraft:max_health modifier remove synb.m:ie.stat
attribute @s minecraft:movement_speed modifier remove synb.m:ie.stat

scoreboard players reset @s synb.IEPlayer.CurrentAmmo
scoreboard players reset @s synb.IEPlayer.CrossDelay
scoreboard players reset @s synb.IEPlayer.RegenTime
scoreboard players reset @s synb.IEPlayer.ShieldCD
scoreboard players reset @s synb.IEPlayer.CurseHP
scoreboard players reset @s synb.IEPlayer.CurseReward