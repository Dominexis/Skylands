# As : player
##

attribute @s minecraft:attack_damage modifier add synb.m:ie.set_zero -1.0 add_value
attribute @s minecraft:max_health modifier add synb.m:ie.set_zero -20 add_value
attribute @s minecraft:movement_speed modifier add synb.m:ie.set_zero -0.10000000149011612 add_value
attribute @s minecraft:attack_speed modifier add synb.m:ie.set_zero -4.0 add_value

function synb:itemengine/mod/htick_stats
function synb:itemengine/mod/tick_attr
function synb:itemengine/mod/inv/htick_inv

scoreboard players operation @s synb.IEPlayer.CurrentAmmo = @s synb.IEStat.Ammo