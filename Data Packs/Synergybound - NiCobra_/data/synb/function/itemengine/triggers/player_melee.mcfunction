# As : player
##

advancement revoke @s only synb:player_melee
execute unless entity @s[team=sl.player,tag=synb.type.player] run return 0
execute unless items entity @s weapon.mainhand minecraft:wooden_sword run return 0

tag @s add synb.status.used_melee
execute unless score @s synb.Trigger.MeleeCD matches 1.. run tag @s add synb.status.charged_melee
scoreboard players operation @s synb.Trigger.MeleeCD = @s synb.IEStat.AtkDelay
scoreboard players operation @s synb.Trigger.MeleeCD *= num2 synb.Const